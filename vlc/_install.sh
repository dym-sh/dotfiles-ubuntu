#!/bin/bash


# install vlc
sudo apt install -y \
  vlc


# link config
mkdir  -p  ~/.config/vlc

ln  -s  `pwd`/v* \
  ~/.config/vlc \
  # --force
