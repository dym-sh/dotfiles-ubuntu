#!/usr/bin/zsh

BIN=~/.local/bin


# link scripts
ln -s `pwd`/upd.sh "$BIN/upd" # --force

ln -s `pwd`/opti.sh "$BIN/opti" # --force

ln -s `pwd`/prtscr.sh "$BIN/prtscr" # --force
ln -s `pwd`/prtwnd.sh "$BIN/prtwnd" # --force

ln -s `pwd`/kk.sh "$BIN/kk" # --force
ln -s `pwd`/purge.sh "$BIN/purge" # --force

ln -s `pwd`/restart.sh "$BIN/restart" # --force
ln -s `pwd`/off.sh "$BIN/off" # --force

ln -s `pwd`/to_mp3.sh "$BIN/to_mp3" # --force

ln -s `pwd`/to_hex.sh "$BIN/to_hex" # --force
ln -s `pwd`/to_dec.sh "$BIN/to_dec" # --force
