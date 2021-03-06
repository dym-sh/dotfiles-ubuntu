#!/usr/bin/zsh

# nvidia vulkan support

sudo add-apt-repository -y \
  ppa:graphics-drivers/ppa

sudo apt upgrade -y
sudo apt install -y \
  nvidia-driver-460 vulkan-tools
  #phoronix-test-suite \
  #vulkan-utils

sudo nvidia-xconfig \
  -a --cool-bits=28 \
  --allow-empty-initial-configuration
