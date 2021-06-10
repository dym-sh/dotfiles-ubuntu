#!/usr/bin/zsh


# sync to Data
rsync -rhP --links --size-only --verbose --delete \
  '/Wnd/Apps/' \
  '/Data/Apps_wnd'


# sync back from Data
rsync -rhP --links --size-only --verbose --delete \
  '/Data/.privat/' \
  '/Wnd/.privat'

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/__sapper__/' \
  --exclude '**/node_modules/' \
  --exclude '**/target/' \
  '/Data/_my/' \
  '/Wnd/_my'
