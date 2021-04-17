#!/usr/bin/zsh

# insall latest from the PPA
sudo add-apt-repository -y \
  ppa:phoerious/keepassxc

sudo apt update -y
sudo apt install -y \
  keepassxc


# link config
ln -s `pwd`/keepassxc.ini \
  ~/.config/keepassxc/
