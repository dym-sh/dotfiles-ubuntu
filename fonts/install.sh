#!/usr/bin/zsh

# uninstall outdated noto-emoji
sudo apt-get remove -y \
  fonts-noto-color-emoji

# get latest noto-emoji
mkdir -p ~/.fonts/NotoEmoji

curl -L https://noto-website-2.storage.googleapis.com/pkgs/NotoEmoji-unhinted.zip \
  -o ~/.fonts/NotoEmoji/emoji.zip
unzip -un ~/.fonts/NotoEmoji/emoji.zip \
  -d ~/.fonts/NotoEmoji/
rm ~/.fonts/NotoEmoji/emoji.zip

curl -L https://noto-website-2.storage.googleapis.com/pkgs/NotoColorEmoji-unhinted.zip \
  -o ~/.fonts/NotoEmoji/color.zip
unzip -un ~/.fonts/NotoEmoji/color.zip \
  -d ~/.fonts/NotoEmoji/
rm ~/.fonts/NotoEmoji/color.zip


# link font-priority config
ln -s `pwd`/.fonts.conf ~/ # --force
