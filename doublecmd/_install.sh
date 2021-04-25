#!/usr/bin/zsh

# insall
sudo apt update -y
sudo apt install -y \
  doublecmd


# link config
mkdir -p ~/.config/doublecmd/

ln -s `pwd`/[a-z]* \
  ~/.config/doublecmd/ --force
