# PyCon India Navigator

This is THE handbook for all organizational information related to PyCon India.

> Note: The handbook is very much WIP. Please feel free to jot in your thoughts by creating an [issue](https://github.com/pythonindia/navigator/issues/new/choose).

Theme used: [Furo](https://pradyunsg.me/furo/quickstart/)

## Setup:

Setup local environment and install dependencies from `requirements.txt`.

1. Create and enter in a directory called `Pycon-work`:

```sh
$ mkdir Pycon-work
$ cd Pycon-work
```

2. Install virtual environment:

```sh
$ pip install virtualenv
```

3. Create the `test-env` virtual environment:

```sh
$ python3.12 -m venv test-env
```

4.  Activate the virtual environment:

```sh
$ source test-env/bin/activate
```

5. Clone git directory:

```sh
$ git clone git@github.com:pythonindia/navigator.git
```
6. Enter in the directotry:

```sh
$ cd navigator/
```
7.  Create a new branch for your contriution:

```sh
$ git checkout -b example-branch
```

8.  Switch to the created branch:

```sh
$ git switch cfp-issue-22 
```

9.  Upgrade `pip` package:
```sh
$ pip install --upgrade pip
```

10. Install from `requirements.txt`:

```sh
$ pip install -r requirements.txt 
```

11. Check the list of installed python packages:

```sh
$ pip list
```

12. Freeze the python pacakges versions:

```sh
$ pip freeze > requirements.txt
```

13. Build locally to maintain groups of programs and files from the source code:

```sh
$ make html
```

14. Run python HTTP server:

```sh
$ ./daemon.sh
```
> Use `Ctrl+C` to shutdown the server.

15.  Deactive the virtual environment when not in use:

```sh
$ deactivate
```
