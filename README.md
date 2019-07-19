# Introduction

Vagrant configuration using Ubuntu 18.04, pyenv, poetry and virtual environments for Python development.

## Usage

## Vagrant

1.  Clone the repository
    ```
    $ git clone https://github.com/giovino/vagrant-python-dev.git
    ```
1.  Run vagrant up
    ```
    $ cd vagrant-python-dev
    $ vagrant up
    $ vagrant ssh
    ```

## pyenv

[pyenv](https://github.com/pyenv/pyenv) lets you easily switch between multiple versions of Python. pyenv is initially installed and configured in `bootstrap.sh`.

## python-virtualenv

[python-virtualenv](https://github.com/pyenv/pyenv-virtualenv) a pyenv plugin to manage virtualenv

1.  Create a project directory
    ```
    $ mkdir pyenv-demo
    ```
1.  Create a virtual environment for
    ```
    $ pyenv virtualenv 3.7.4 pyenv-demo
    ```
1.  Activate the virtual environment
    ```
    $ cd pyenv-demo
    $ pyenv local pyenv-demo
    ```
1.  Artifacts of the active virtual environment
    ```
    # Seen in prompt
    (pyenv-demo) vagrant@vagrant:~/pyenv-demo$

    $ cat .python-version
    pyenv-demo

    $ pyenv which pip
    /home/vagrant/.pyenv/versions/pyenv-demo/bin/pip
    ```
1.  Upgrade / install pip setuptools wheel
    ```
    $ pip install --upgrade pip setuptools wheel
    ```
1.  Install Python development tools
    ```
    $ pip install pylint flake8 black pytest ipython
    ```
1.  Deactivate the virtual environment
    ```
    # Change to a different directory (prompt will change)
    $ cd
    ```
1.  List all Python versions available to pyenv
    ```
    $ pyenv versions
    ```

## Poetry

[poetry](https://poetry.eustace.io/) helps you declare, manage and install dependencies of Python projects, ensuring you have the right stack everywhere. poetry supports [pyenv and virtualenvs](https://poetry.eustace.io/docs/basic-usage/#poetry-and-virtualenvs)

### Using pyenv created virtual environments

1.  Create a new project
    ```
    $ poetry new poetry-demo
    Created package poetry-demo in poetry-demo
    ```
2.  Create a new pyenv virtual environment
    ```
    $ pyenv virtualenv 3.7.4 poetry-demo
    ```
1.  Activate the virtual environment
    ```
    $ cd poetry-demo
    $ pyenv local poetry-demo
    ```
1.  Upgrade / install pip setuptools wheel
    ```
    $ pip install --upgrade pip setuptools wheel
    ```
1.  Install Python development tools
    ```
    $ pip install pylint flake8 black pytest ipython
    ```
1.  Show poetry debug info
    ```
    $ poetry debug:info

    Poetry
    ======

     * Version: 0.12.11
     * Python:  3.7.4

    Virtualenv
    ==========

     * Python:         3.7.4
     * Implementation: CPython
     * Path:           /home/vagrant/.pyenv/versions/3.7.2/envs/poetry-demo
     * Valid:          True

    System
    ======

     * Platform: linux
     * OS:       posix
     * Python:   /home/vagrant/.pyenv/versions/3.7.4
    ```
1.  Deactivate the virtual environment
    ```
    # Change to a different directory (prompt will change)
    $ cd
    ```
1.  List all Python versions available to pyenv
    ```
    $ pyenv versions
    ```

## Resources

1.  [Setting up your Python environment](https://www.loganasherjones.com/2018/03/setting-up-your-python-environment/)
2.  [How to manage multiple Python versions and virtual environments](https://medium.freecodecamp.org/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f)
3.  [My Python Development Workflow with pyenv](https://medium.com/@martinlabs/my-python-development-workflow-with-pyenv-2bfbc03a15a1)
4.  [Pyenv – Python Version Management Made Easier](https://www.ostechnix.com/pyenv-python-version-management-made-easier/)
5.  [Python 3 Installation & Setup Guide](https://realpython.com/installing-python/#compiling-python-from-source)
6.  [My Python Development Environment, 2018 Edition](https://jacobian.org/2018/feb/21/python-environment-2018/)
7.  [PyPI packages not in the standard library](https://stackoverflow.com/questions/41573587/what-is-the-difference-between-venv-pyvenv-pyenv-virtualenv-virtualenvwrappe/41573588#41573588)
8.  [venv — Creation of virtual environments](https://docs.python.org/3/library/venv.html)
