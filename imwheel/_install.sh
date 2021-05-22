#!/bin/bash

# install imwheel
sudo apt install -y \
  imwheel


# start imwheel on reboot
echo "`crontab -l`
@reboot `which imwheel`
"  |  crontab -


# link config
ln -s  `pwd`/.imwheelrc  ~/  # --force
