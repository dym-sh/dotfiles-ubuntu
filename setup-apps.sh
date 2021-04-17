#!/usr/bin/zsh

# remove junk
sudo apt purge -y \
  'libreoffice-*' 'java-*'

# tools
sudo apt install -y \
  curl wget sshfs git \
  g++ make clang build-essential \
  rmlint ffmpeg lynx \
  usrmerge \
  imagemagick graphicsmagick jpegoptim pngcrush \
  pavucontrol ghostscript \
  fonts-font-awesome

# GUI-Apps
sudo apt install -y \
  doublecmd-gtk vlc \
  transmission-gtk copyq \
  gimp krita lxappearance \
  kid3
