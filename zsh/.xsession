#!/usr/bin/zsh

setxkbmap -option caps:none
setxkbmap -option altwin:swap_alt_win
setxkbmap -option lv3:ralt_switch
setxkbmap us -variant mac

numlockx off

xset s off
xset s noblank
xset b off
xset -dpms

# xrdb -merge /etc/X11/xinit/.Xresources
# xmodmap /etc/X11/xinit/.Xmodmap
# xrdb -merge "$HOME/.Xresources"
xmodmap "$HOME/.Xmodmap"

pulseaudio -k

# /Cfg/startapps.sh

~/.ssh/server.sh 2>&1 &

imwheel 2>&1 &

copyq 2>&1 &
