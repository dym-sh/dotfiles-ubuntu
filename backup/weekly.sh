#!/bin/bash

# bak $HOME
cd `realpath "$0" | xargs dirname`
./home.sh


BAK='/media/dym/bak_weekly'

udisksctl mount -b '/dev/disk/by-label/bak_weekly'

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/__sapper__/' \
  --exclude '**/node_modules/' \
  --exclude '**/target/' \
  --exclude '.privat/' \
  --exclude '_/' \
  --exclude 'Apps/share/Trash/' \
  --exclude 'Apps_wnd/' \
  --exclude 'G/' \
  --exclude 'Iso/' \
  --exclude 'Video/anime/' \
  --exclude 'Video/porn*/' \
  '/Data/' \
  "$BAK"

echo "-
-
# .privat"
restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"

udisksctl unmount -b '/dev/disk/by-label/bak_weekly'
