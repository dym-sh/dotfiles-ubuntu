#!/usr/bin/zsh


# .deb
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y


# node + npm
n lts
npm i -g npm
npm up -g


# deno
deno upgrade


# # python
pipupgrade -y --ignore-error


# # haskell
cabal update


# flatpak
sudo flatpak update -y


# snap
sudo snap refresh


# flutter
flutter upgrade


# oh-my-zsh
cd ~/.oh-my-zsh/ \
  && ./tools/upgrade.sh \
  && cd -


# rust & co
rustup update
cargo install-update -a
