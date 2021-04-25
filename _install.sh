#!/usr/bin/zsh

# remove unneeded
sudo apt purge -y \
  'libreoffice-*' 'java-*' \
  celluloid hypnotix hexchat \
  onboard pix gnote drawing xviewer \
  redshift warpinator yelp 


# update current
sudo apt update -y
sudo apt upgrade -y


# tools
sudo apt install -y \
  zsh curl wget sshfs git \
  g++ make clang build-essential \
  rmlint ffmpeg lynx \
  usrmerge \
  imagemagick graphicsmagick jpegoptim pngcrush \
  pavucontrol ghostscript \
  fonts-font-awesome


# GUI-Apps
sudo apt install -y \
  vlc transmission-gtk \
  gimp krita lxappearance \
  kid3
