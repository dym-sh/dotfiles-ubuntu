#!/usr/bin/zsh

sudo mkdir -p '/usr/local/bin/'
sudo chown -R "$USER:$USER" '/usr/local/'


# ~/.local
mv ~/.local/* '/usr/local/'
rm -rf ~/.local
ln -s '/usr/local' ~/.local


# cargo
mv ~/.cargo/bin/* '/usr/local/bin/'
rm -rf ~/.cargo/bin
ln -s '/usr/local/bin' ~/.cargo/bin


# deno
mv ~/.deno/bin/* '/usr/local/bin/'
rm -rf ~/.deno/bin
ln -s '/usr/local/bin' ~/.deno/bin


# games
sudo mv /usr/games/* '/usr/local/bin/'
sudo rm -r '/usr/games'
sudo ln -s '/usr/local/bin' '/usr/games'

sudo mv /usr/local/games/* '/usr/local/bin/'
sudo rm -r '/usr/local/games'
sudo ln -s '/usr/local/bin' '/usr/local/games'


# flutter
mkdir -p ~/snap/flutter/common/flutter/.pub-cache/
mv ~/snap/flutter/common/flutter/.pub-cache/bin/* '/usr/local/bin/'
rm -rf ~/snap/flutter/common/flutter/.pub-cache/bin
ln -s '/usr/local/bin' ~/snap/flutter/common/flutter/.pub-cache/bin
