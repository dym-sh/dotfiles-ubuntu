#!/usr/bin/zsh

ln  -s  `pwd`/.gtk*  ~/  # --force


mkdir  -p  ~/.config/gtk-2.0/
ln  -s  `pwd`/gtkfilechooser.ini  ~/.config/gtk-2.0/  # --force


mkdir  -p  ~/.config/gtk-3.0/
ln  -s  `pwd`/bookmarks  ~/.config/gtk-3.0/  # --force
ln  -s  `pwd`/settings.ini  ~/.config/gtk-3.0/  # --force
