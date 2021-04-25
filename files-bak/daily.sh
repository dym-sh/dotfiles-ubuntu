#!/usr/bin/zsh

# bak $HOME
# /Cfg/files-bak/home.sh

# bak Data
BAK='/media/dym/bak_daily'

udisksctl mount -b '/dev/disk/by-label/bak_daily'

restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/__sapper__/' \
  --exclude '**/node_modules/' \
  --exclude '**/target/' \
  --exclude '.privat/' \
  '/Data/' \
  "$BAK"

udisksctl unmount -b '/dev/disk/by-label/bak_daily'
