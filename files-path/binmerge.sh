#!/usr/bin/zsh

# own /usr/local
sudo mkdir -p  '/Apps/bin/'
sudo chown -R  "$USER:$USER"  '/Apps/'
sudo chown -R  "$USER:$USER"  '/usr/local/'


# ~/.local
cp -RT  ~/.local/  '/Apps/'
rm -rf  ~/.local/
ln -s  '/Apps'  ~/.local


# cargo
mkdir -p  ~/.cargo/  
cp -RT  ~/.cargo/bin/  '/Apps/'
rm -rf  ~/.cargo/bin
ln -s  '/Apps'  ~/.cargo/bin


# deno
mkdir -p  ~/.deno/
cp -RT  ~/.deno/bin/  '/Apps/'
rm -rf  ~/.deno/bin
ln -s  '/Apps'  ~/.deno/bin


# snap
sudo mkdir -p  '/snap/'
sudo cp -RT  '/snap/bin/'  '/Apps/'
sudo rm -rf  '/snap/bin'
sudo ln -s  '/Apps'  '/snap/bin'


# games
sudo cp -RT  '/usr/games/' '/Apps/bin/'
sudo rm -rf  '/usr/games'
sudo ln -s  '/Apps/bin' '/usr/games'

sudo cp -RT  '/usr/local/games/' '/Apps/bin/'
sudo rm -rf  '/usr/local/games'
sudo ln -s  '/Apps/bin' '/usr/local/games'


# flutter
mkdir -p  ~/snap/flutter/common/flutter/.pub-cache/
cp -RT  ~/snap/flutter/common/flutter/.pub-cache/bin/  '/Apps/'
rm -rf  ~/snap/flutter/common/flutter/.pub-cache/bin
ln -s  '/Apps'  ~/snap/flutter/common/flutter/.pub-cache/bin
