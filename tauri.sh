#!/usr/bin/zsh


# install via npm
npm i -g \
  tauri

# add to the project
npm i --save-dev \
  tauri


# OR compile

# base
sudo apt update -y
sudo apt install -y \
  libwebkit2gtk-4.0-dev \
  build-essential \
  curl \
  wget \
  libssl-dev \
  appmenu-gtk3-module \
  libgtk-3-dev \
  squashfs-tools

# node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node --latest-npm
nvm use node

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustc --version
rustup update stable

# tauri
cargo install tauri-bundler --force
