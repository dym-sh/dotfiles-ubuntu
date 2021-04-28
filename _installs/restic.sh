#!/usr/bin/zsh


# install
sudo apt install -y \
  restic


# make backup dir
restic init \
  -p  '/Data/.privat/restic/p.txt' \
  -r  "/media/$USER/bak_daily/.privat"


# backup
restic backup \
  '/Data/.privat' \
  -p  '/Data/.privat/restic/p.txt' \
  -r  "/media/$USER/bak_daily/.privat"
