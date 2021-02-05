#!/usr/bin/zsh

# ~/.profile: executed by the command interpreter for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
#umask 022

export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:/App"

export QT_QPA_PLATFORMTHEME="gtk2"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export TERMINAL=`which alacritty`
