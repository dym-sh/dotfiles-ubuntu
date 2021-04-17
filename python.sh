#!/usr/bin/zsh

# get python3 and pip
sudo apt install -y \
  python3 \
  python-is-python3 \
  python3-pip

ln -s /usr/bin/pip3 /usr/local/bin/pip


# upgdate all the already installed scripts
pip install pipupgrade
pipupgrade -y --pip --ignore-error


# pycairo
sudo apt install -y \
   libcairo2-dev

pip install \
  pycairo \
  --no-cache-dir --upgrade


# pycurl
sudo apt install -y \
  libcurl4-openssl-dev libssl-dev

pip install --no-cache-dir --upgrade \
  pycurl


# PyGObject
sudo apt install -y \
  libgirepository1.0-dev

sudo pip3 install --no-cache-dir --upgrade \
  PyGObject


# Markdown
sudo pip3 install --no-cache-dir --upgrade \
  Markdown


# PyICU
#    Please install pkg-config on your system or set the ICU_VERSION environment
sudo pip3 install --no-cache-dir --upgrade \
  PyICU


# pyparted
sudo pip3 install --no-cache-dir --upgrade \
  pyparted
