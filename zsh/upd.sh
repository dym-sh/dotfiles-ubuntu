#!/bin/zsh

# update everything

# .deb
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# node + npm
sudo n lts
sudo npm i -g npm
sudo npm up -g

# deno
deno upgrade

# python
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade youtube-dlc

# rust & co
rustup update
cargo install-update -a

# haskell
cabal update
