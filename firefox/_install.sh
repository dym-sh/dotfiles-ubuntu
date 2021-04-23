#!/usr/bin/zsh

# Firefox Nightly
sudo add-apt-repository -y \
  ppa:ubuntu-mozilla-daily/ppa

sudo apt update -y
sudo apt install -y \
  firefox-trunk
