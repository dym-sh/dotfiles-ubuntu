#!/usr/bin/zsh


# unlock on mint
sudo rm /etc/apt/preferences.d/nosnap.pref


# install
sudo apt update -y
sudo apt install -y \
  snapd snapcraft


# test
sudo snap install hello-world
hello-world
sudo snap uninstall hello-world
