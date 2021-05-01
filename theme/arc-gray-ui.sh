#!/usr/bin/zsh

# gray GTK theme

sudo apt install -y \
  meson sassc inkscape

python3 -m pip install \
  meson ninja

git clone --depth 1 \
  https://github.com/pinpox/arc-grey-theme

cd arc-grey-theme

./autogen.sh --prefix=/usr --disable-light --disable-darker
sudo make install
