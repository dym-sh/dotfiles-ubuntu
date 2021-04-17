#!/usr/bin/zsh


# install sublime_*
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg \
  | sudo apt-key add -
sudo apt install -y \
  apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" \
  | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update -y
sudo apt install -y \
  sublime-text sublime-merge


# aliases
sudo ln -s /opt/sublime_text/sublime_text /usr/local/bin/sublime_text
sudo ln -s /opt/sublime_text/sublime_text /usr/local/bin/s

sudo ln -s /opt/sublime_merge/sublime_merge /usr/local/bin/sublime_merge


# link config
ln -s `pwd`/keymap.json \
  ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap # --force
