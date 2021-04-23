#!/usr/bin/zsh

# nvidia vulkan support

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt upgrade -y
sudo apt install -y \
  vulkan-utils vulkan-tools

sudo nvidia-xconfig \
  -a --cool-bits=28 \
  --allow-empty-initial-configuration

