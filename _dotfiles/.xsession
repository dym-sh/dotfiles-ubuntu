#!/usr/bin/zsh

setxkbmap  -option  caps:none
setxkbmap  -option  altwin:swap_alt_win
setxkbmap  -option  lv3:ralt_switch
setxkbmap  us  -variant  mac

numlockx  off

xset  s  off
xset  s  noblank
xset  b  off
xset  -dpms

# xrdb  -merge  /etc/X11/xinit/.Xresources
xrdb  -merge  ~/.Xresources
# xmodmap  /etc/X11/xinit/.Xmodmap
xmodmap  "$HOME/.Xmodmap"

# xsetroot  -xcf  ~/.icons/OSX-ElCap/cursors/left_ptr 48
gsettings  set  org.gnome.desktop.interface  cursor-size  48


pulseaudio  -k

# /Cfg/startapps.sh

~/.ssh/server-fs  2>&1  &

imwheel  2>&1  &

copyq  2>&1  &
