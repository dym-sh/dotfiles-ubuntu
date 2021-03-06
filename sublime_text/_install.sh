#!/usr/bin/zsh


# install sublime_*
wget -qO - \
  'https://download.sublimetext.com/sublimehq-pub.gpg' \
  | sudo apt-key add -
  
sudo apt install -y \
  apt-transport-https

echo 'deb https://download.sublimetext.com/ apt/stable/' \
  | sudo tee '/etc/apt/sources.list.d/sublime-text.list'

sudo apt update -y
sudo apt install -y \
  sublime-text sublime-merge


BIN=~/.local/bin
mkdir  -p  "$BIN"

# aliases
ln  -s  '/opt/sublime_text/sublime_text'  "$BIN/sublime_text"
ln  -s  '/opt/sublime_text/sublime_text'  "$BIN/s"

ln  -s  '/opt/sublime_merge/sublime_merge'  "$BIN/sublime_merge"


# link configs
mkdir -p  ~/.config/sublime-text/Packages/
mv  ~/.config/sublime-text/Packages/User \
  ~/.config/sublime-text/Packages/User_bak

ln  -s  `pwd` \
  ~/.config/sublime-text/Packages/User \
  # --force
