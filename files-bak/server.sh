#!/usr/bin/zsh
# backup /Data to server

BAK='/Server/var/bak'

~/.ssh/server-fs.sh

DIRS=(
_my
Books
Fonts
Bugs
TODO
)

for DIR in "${DIRS[@]}"; do
  echo "-
-
# '$DIR'"
  rsync -rhP --links --size-only --verbose --delete \
    --exclude '**/.git/' \
    --exclude '**/.Trash-1000' \
    --exclude '**/__sapper__/' \
    --exclude '**/node_modules/' \
    --exclude '**/target/' \
    "/Data/$DIR/" \
    "$BAK/$DIR"

done

echo "-
-
# .privat"
restic backup '/Data/.privat' \
  -p '/Data/.privat/restic/p.txt' \
  -r "$BAK/.privat"

umount '/Server'
