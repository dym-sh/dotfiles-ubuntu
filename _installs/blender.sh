#!/bin/bash

sudo add-apt-repository -y \
  ppa:savoury1/ffmpeg4 \
  ppa:savoury1/blender

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo apt-get install -y \
  blender
