#!/usr/bin/zsh


# sync back to Data
rsync -rhP --links --size-only --verbose --delete \
  '/Wnd/G/' \
  '/Data/G'

rsync -rhP --links --size-only --verbose --delete \
  '/Wnd/Apps_wnd/' \
  '/Data/Apps_wnd'



# sync some Data
rsync -rhP --links --size-only --verbose --delete \
  '/Data/.privat/' \
  '/Wnd/.privat'

rsync -rhP --links --size-only --verbose --delete \
  '/Data/_my/' \
  '/Wnd/_my'
