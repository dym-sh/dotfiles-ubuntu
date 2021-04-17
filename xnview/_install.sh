#!/usr/bin/zsh

# get XnView
wget 'https://download.xnview.com/XnViewMP-linux-x64.deb'
sudo dpkg -i 'XnViewMP-linux-x64.deb'


# link config
mkdir -p ~/.config/xnviewmp/
ln -s `pwd`/xnview.ini ~/.config/xnviewmp/
