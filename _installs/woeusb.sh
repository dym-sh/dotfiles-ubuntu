#!/usr/bin/zsh


# install
sudo add-apt-repository -y \
  ppa:tomtomtom/woeusb

sudo apt update -y
sudo apt install -y \
  woeusb


# get disk list
sudo fdisk -l

# use
sudo woeusb \
  --target-filesystem NTFS \
  -d /Wnd/Apps/10.iso \
  /dev/sdX
