#!/bin/bash

ln -s `pwd`/.* ~/ # --force

ln -s `pwd`/upd.sh ~/.local/bin/upd

sudo apt install -y \
  jpegoptim pngquant \
  imagemagick graphicsmagick

ln -s `pwd`/opti.sh ~/.local/bin/opti
ln -s `pwd`/prtsc.sh ~/.local/bin/prtsc

ln -s `pwd`/kk.sh ~/.local/bin/kk
ln -s `pwd`/purge.sh ~/.local/bin/purge

ln -s `pwd`/restart.sh ~/.local/bin/restart
ln -s `pwd`/off.sh ~/.local/bin/off
