#!/usr/bin/zsh


# get a better charmap
sudo apt install -y \
  gnome-characters


# uninstall outdated noto-emoji
sudo apt remove -y \
  fonts-noto-color-emoji


# get latest noto-emoji
mkdir -p ~/.fonts/NotoEmoji
curl -L 'https://raw.githubusercontent.com/googlefonts/noto-emoji/main/fonts/NotoColorEmoji.ttf' \
  -o ~/.fonts/NotoEmoji/NotoColorEmoji.ttf

# link font-priority config
ln -s `pwd`/.fonts.conf ~/ # --force

# rebuild fonts-cache
fc-cache -fv
