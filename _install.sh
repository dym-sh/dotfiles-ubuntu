#!/bin/bash

# remove unneeded
sudo apt-get purge -y \
  'libreoffice-*' 'java-*' \
  celluloid hypnotix hexchat \
  onboard pix gnote drawing xviewer \
  redshift warpinator yelp

# remove default wallpapers
sudo rm -rf \
  /usr/share/wallpapers/

# update current
sudo apt update -y
sudo apt upgrade -y


# tools
sudo apt install -y \
  zsh curl wget sshfs git \
  g++ make clang build-essential \
  rmlint ffmpeg lynx \
  usrmerge gparted \
  imagemagick graphicsmagick jpegoptim pngquant \
  pavucontrol ghostscript \
  fonts-font-awesome dconf-editor


# GUI-Apps
sudo apt install -y \
  vlc transmission-gtk \
  gimp krita lxappearance \
  kid3
