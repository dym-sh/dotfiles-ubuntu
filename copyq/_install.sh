#!/usr/bin/zsh

# insall
sudo apt update -y
sudo apt install -y \
  copyq


# link config
mkdir -p ~/.config/copyq/

ln -s `pwd`/copyq* \
  ~/.config/copyq/ # --force
