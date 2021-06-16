#!/usr/bin/zsh


# install zsh
sudo  apt  install  -y  \
  zsh


# install oh-my-zsh
sh  -c  "$(curl  -fsSL  'https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh')"


# link dotfiles
ln  -s  `pwd`/.[a-zA-Z]*  ~/  # --force
