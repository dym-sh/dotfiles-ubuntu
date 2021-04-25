#!/bin/bash

# install latest stable git from PPA
sudo add-apt-repository -y \
  ppa:git-core/ppa

sudo apt update -y
sudo apt install -y \
  git


# link config
ln -s `pwd`/.git* ~/ # --force


# link scripts
ln -s `pwd`/shipit.sh /Apps/shipit # --force
ln -s `pwd`/ggc.sh /Apps/ggc # --force
