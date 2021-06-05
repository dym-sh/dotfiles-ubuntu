#!/usr/bin/zsh

# install latest inkscape
# as per https://inkscape.org/release

sudo add-apt-repository -y \
  ppa:inkscape.dev/stable

sudo apt update -y

sudo apt install -y \
  inkscape
