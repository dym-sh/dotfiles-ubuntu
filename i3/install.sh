#!/usr/bin/zsh

# backup current config
mv ~/.config/i3/config \
   ~/.config/i3/config_`date +\%Y\%m\%d\%H\%M`.bak

# link new config
ln -s `pwd`/config \
   ~/.config/i3/

# restart i3
i3-msg restart
