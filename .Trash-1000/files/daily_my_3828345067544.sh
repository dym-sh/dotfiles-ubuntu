#!/usr/bin/zsh

rsync -rhP --links --size-only --verbose --delete \
  --exclude '**/.Trash-1000/' \
  --exclude '**/node_modules/' \
  '/Data/_my/' \
  '/G/_my'
