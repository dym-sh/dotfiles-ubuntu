#!/usr/bin/zsh

BAK='/media/dym/bak_daily'

udisksctl mount -b '/dev/disk/by-label/bak_daily'

DIRS=(
_my
Audio
Books
Bugs
Fonts
Home
Img
Music
TODO
)

for DIR in $DIRS; do
  echo "-
-
# '$DIR'"
  rsync -rhP --links --size-only --verbose --delete \
    --exclude '**/.Trash-1000/' \
    --exclude '**/node_modules/' \
    "/Data/$DIR/" \
    "$BAK/$DIR"

done

echo "-
-
# .privat"
restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"

udisksctl unmount -b '/dev/disk/by-label/bak_daily'
