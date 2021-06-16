#!/bin/bash

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
