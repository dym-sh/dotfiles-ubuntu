#!/usr/bin/zsh

sudo apt install -y \
  cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

cargo install alacritty

# link config
mkdir -p ~/.config/alacritty/
ln -s `pwd`/alacritty.yml \
   ~/.config/alacritty/alacritty.yml --force
