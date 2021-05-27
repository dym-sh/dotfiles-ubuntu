#!/bin/bash

# bak $HOME
#  cd `realpath "$0" | xargs dirname`
#  ./home.sh


BAK='/media/dym/bak_weekly'


restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"


udisksctl mount -b '/dev/disk/by-label/bak_weekly'

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/__sapper__/' \
  --exclude '**/node_modules/' \
  --exclude '**/target/' \
  --exclude '.privat/' \
  --exclude '_/' \
  --exclude 'Apps*/' \
  --exclude 'G/' \
  --exclude 'Iso/' \
  --exclude 'Video/anime/' \
  --exclude 'Video/porn*/' \
  '/Data/' \
  "$BAK"

udisksctl unmount -b '/dev/disk/by-label/bak_weekly'
