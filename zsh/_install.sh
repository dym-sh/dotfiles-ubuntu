#!/usr/bin/zsh

# link dotfiles
ln -s `pwd`/.profile ~/ # --force
ln -s `pwd`/.z* ~/ # --force

# link scripts
ln -s `pwd`/upd.sh '/usr/local/bin/upd'

ln -s `pwd`/opti.sh '/usr/local/bin/opti'

ln -s `pwd`/kk.sh '/usr/local/bin/kk'
ln -s `pwd`/purge.sh '/usr/local/bin/purge'

ln -s `pwd`/restart.sh '/usr/local/bin/restart'
ln -s `pwd`/off.sh '/usr/local/bin/off'