#!/bin/sh

# rust & co

curl --proto '=https' --tlsv1.2 -sSf \
  https://sh.rustup.rs \
  | sh -s -- --default-toolchain none -y

source $HOME/.cargo/env

rustup toolchain install nightly \
  --allow-downgrade \
  --profile minimal \
  --component clippy

rustup default nightly

env LIBSSH2_SYS_USE_PKG_CONFIG='' cargo install cargo-update


# OR

# rust & co
sudo apt install -y \
  cmake pkg-config python3 \
  openssl libssl1.1 libssl-dev \
  libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env


## cargo apps
cargo install \
  bat exa fd-find \
  broot jql sd \
  xargo

cargo install \
  cargo-update

cargo clean
OPENSSL_LIB_DIR="/usr/lib/x86_64-linux-gnu"
OPENSSL_INCLUDE_DIR="/usr/include/openssl"
cargo build

