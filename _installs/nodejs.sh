#!/bin/bash


## optional: remove old installs
# sudo apt purge -y \
#   nodejs npm
# sudo apt autoremove -y
# sudo rm -rf /usr/share/npm
# sudo rm -rf /usr/share/nodejs


# install node + npm
sudo apt install -y \
  nodejs npm


# fix permissions
sudo chown -R $USER:$USER \
  /usr/local


# install version manager
npm i -g n


# bump node to latest LTS version
n lts

# update npm
npm i -g npm
