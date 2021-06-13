#!/usr/bin/zsh


# link ssh dir
ln -s '/Data/.privat/ssh' ~/.ssh # --force


BIN=~/.local/bin

# link connection scripts
ln  -s  ~/.ssh/server.sh  "$BIN/server"  # --force
ln  -s  ~/.ssh/server-fs.sh  "$BIN/server-fs"  # --force
