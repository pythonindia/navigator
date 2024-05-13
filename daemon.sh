#!/bin/bash
trap _cleanup EXIT
function _cleanup() {
  kill $_pid
}

make html
python -m http.server -d build/html &
_pid=$!
echo "Press Ctrl-c to exit"

watcher() {
    buildsum1=""
    sourcesum1=""

    while [[ true ]]
    do
        sourcesum2=`find source -type f -exec md5sum {} \;`
        if [[ $sourcesum1 != $sourcesum2 ]] ; then
            if [ -n "$sourcesum1" ]; then
              echo "Rebuilding assets"
              make html
            fi
            sourcesum1=$sourcesum2
        fi
        buildsum2=`find build/html -type f -exec md5sum {} \;`
        if [[ $buildsum1 != $buildsum2 ]] ; then
            if [ -n "$buildsum1" ]; then
              kill $_pid
              echo "Restarting developer server"
              python -m http.server -d build/html &
              _pid=$!
            fi
            buildsum1=$buildsum2
        fi
        sleep 2
    done
}

watcher
