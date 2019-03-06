#!/bin/bash

set -euo pipefail

###
echo "Update existing software packages"
sudo apt-get -y update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o \
Dpkg::Options::="--force-confdef" -o \
Dpkg::Options::="--force-confold" upgrade


###
echo "Install new software packages"
sudo apt-get -y install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev \
python-openssl libicu-dev libicu-dev git wget curl htop jq sqlite3


###
echo "Install and configure pyenv"
mkdir downloads

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer -o ~/downloads/pyenv-installer.sh
/bin/bash downloads/pyenv-installer.sh

cat << EOF | tee --append /home/vagrant/.bashrc
export PATH="/home/vagrant/.pyenv/bin:\$PATH"
eval "\$(pyenv init -)"
eval "\$(pyenv virtualenv-init -)"
EOF

source /home/vagrant/.bashrc


###
echo "Install and configure Python 3.7.2 as default"
/home/vagrant/.pyenv/bin/pyenv install 3.7.2
/home/vagrant/.pyenv/bin/pyenv global 3.7.2


###
echo "Upgrade and install pip setuptools wheel"
/home/vagrant/.pyenv/shims/pip install --upgrade pip setuptools wheel


###
echo "Install Python development tools"
/home/vagrant/.pyenv/shims/pip install pylint flake8 black pytest ipython


###
echo "Install Poetry"
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py -o ~/downloads/get-poetry.py
/home/vagrant/.pyenv/shims/python3 ~/downloads/get-poetry.py


###
echo "Restarting"
sudo reboot
