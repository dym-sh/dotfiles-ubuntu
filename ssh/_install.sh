#!/usr/bin/zsh


# link ssh dir
ln -s '/Data/.privat/ssh' ~/.ssh # --force


# link connection scripts
ln -s ~/.ssh/server.sh /Apps/server # --force
ln -s ~/.ssh/server-fs.sh /Apps/server-fs # --force
