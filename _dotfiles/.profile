#!/usr/bin/zsh

export SHELL='/usr/bin/zsh'
export HOME='/home/dym'
export LANG='en_US.UTF-8'
export ARCHFLAGS='-arch x86_64'

export QT_QPA_PLATFORMTHEME="gtk2"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export TERMINAL=`which alacritty`
export EDITOR=`which sublime_text`
source "$HOME/.cargo/env"

export PATH="$PATH:$HOME/snap/flutter/common/flutter/.pub-cache/bin"