# Introduction

Vagrant configuration using Ubuntu 18.04, pyenv, poetry and virtual environments for Python development.

## Usage

## Vagrant

## pyenv

[pyenv](https://github.com/pyenv/pyenv) lets you easily switch between multiple versions of Python. pyenv is initially installed and configured in `bootstrap.sh`.

## python-virtualenv

[python-virtualenv](https://github.com/pyenv/pyenv-virtualenv) a pyenv plugin to manage virtualenv

1.  Create the project directory named project-fun
    ```
    $ mkdir project-fun
    ```
1.  Create a virtual environment for
    ```
    $ pyenv virtualenv 3.7.2 project-fun
    ```
1.  Active the virtual environment
    ```
    $ cd project-fun
    $ pyenv local project-fun
    ```
1.  Artifacts of the active virtual environment
    ```
    # Seen in prompt
    (project-fun) vagrant@vagrant:~/project-fun$

    $ cat .python-version
    project-fun

    $ pyenv which pip
    /home/vagrant/.pyenv/versions/project-fun/bin/pip
    ```
1.  Deactivate the virtual environment
    ```
    # Prompt will change
    $ cd

    # Change to default 3.7.2
    $ pyenv local 3.7.2
    ```

## Poetry

[poetry](https://poetry.eustace.io/) Python packaging and dependency management made easy. poetry supports [pyenv and virtualenvs](https://poetry.eustace.io/docs/basic-usage/#poetry-and-virtualenvs)

### Using Poetry created virtual environments

1.  Create a new project
    ```
    $ poetry new poetry-demo-1
    ```
1.  Add Python requests module
    ```
    $ poetry add requests
    Creating virtualenv poetry-demo-1-py3.7 in /home/vagrant/.cache/pypoetry/virtualenvs
    Using version ^2.21 for requests
    ...
    ```
1.  Spawn shell within virtual environment
    ```
    $ poetry shell
    ```
1.  Show poetry debug info
    ```
    $ poetry debug:info

    Poetry
    ======

     * Version: 0.12.11
     * Python:  3.7.2

    Virtualenv
    ==========

     * Python:         3.7.2
     * Implementation: CPython
     * Path:           /home/vagrant/.cache/pypoetry/virtualenvs/poetry-demo-1-py3.7
     * Valid:          True

    System
    ======

     * Platform: linux
     * OS:       posix
     * Python:   /home/vagrant/.pyenv/versions/3.7.2
    ```
    1.  Upgrade / install pip setuptools wheel
        ```
        $ pip install --upgrade pip setuptools wheel
        ```
    1.  Install Python development tools
        ```
        $ pip install pylint flake8 black pytest ipython
        ```

### Using pyenv created virtual environments

1.  Create a new project
    ```
    $ poetry new poetry-demo-2
    Created package poetry-demo-2 in poetry-demo-2
    ```
2.  Create a new pyenv virtual environment
    ```
    $ pyenv virtualenv 3.7.2 poetry-demo-2
    ```
1.  Active the virtual environment
    ```
    $ cd poetry-demo-2
    $ pyenv local poetry-demo-2
    ```
1.  Add Python requests module
    ```
    $ poetry add requests
    Using version ^2.21 for requests
    ...
    ```
1.  Show poetry debug info
    ```
    poetry debug:info

    Poetry
    ======

     * Version: 0.12.11
     * Python:  3.7.2

    Virtualenv
    ==========

     * Python:         3.7.2
     * Implementation: CPython
     * Path:           /home/vagrant/.pyenv/versions/3.7.2/envs/poetry-demo-2
     * Valid:          True

    System
    ======

     * Platform: linux
     * OS:       posix
     * Python:   /home/vagrant/.pyenv/versions/3.7.2
    ```
1.  Upgrade / install pip setuptools wheel
    ```
    $ pip install --upgrade pip setuptools wheel
    ```
1.  Install Python development tools
    ```
    $ pip install pylint flake8 black pytest ipython
    ```



## PyCharm

## Resources

1.  [Setting up your Python environment](https://www.loganasherjones.com/2018/03/setting-up-your-python-environment/)
2.  [How to manage multiple Python versions and virtual environments](https://medium.freecodecamp.org/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f)
3.  [My Python Development Workflow with pyenv](https://medium.com/@martinlabs/my-python-development-workflow-with-pyenv-2bfbc03a15a1)
4.  [Pyenv – Python Version Management Made Easier](https://www.ostechnix.com/pyenv-python-version-management-made-easier/)
5.  [Python 3 Installation & Setup Guide](https://realpython.com/installing-python/#compiling-python-from-source)
6.  [My Python Development Environment, 2018 Edition](https://jacobian.org/2018/feb/21/python-environment-2018/)
