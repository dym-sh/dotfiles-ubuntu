#!/usr/bin/zsh

sudo apt install -y \
  libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 \
  libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

# from https://www.anaconda.com/products/individual#linux
wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
