#!/usr/bin/zsh


# bak $HOME
cd `realpath "$0" | xargs dirname`
./home.sh


# bak Data
LABEL='bak_daily'
BAK="/media/dym/$LABEL"

udisksctl mount -b "/dev/disk/by-label/$LABEL"

restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/__sapper__/' \
  --exclude '**/node_modules/' \
  --exclude '**/target/' \
  --exclude '.privat/' \
  --exclude 'Apps/share/Trash/' \
  '/Data/' \
  "$BAK"

udisksctl unmount -b "/dev/disk/by-label/$LABEL"
