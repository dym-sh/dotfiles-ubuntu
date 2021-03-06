#!/usr/bin/zsh

export SHELL='/usr/bin/zsh'
export HOME='/home/dym'
export LANG='en_US.UTF-8'
export ARCHFLAGS='-arch x86_64'

export GDK_SCALE=1.5
export GDK_DPI_SCALE=1.5
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export QT_QPA_PLATFORMTHEME="gtk2"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=1.5

export TERMINAL=`which alacritty`
export EDITOR=`which sublime_text`

export PATH="$PATH:/Apps:/Apps/bin:$HOME/.local/bin:$HOME/snap/flutter/common/flutter/.pub-cache/bin:$HOME/.pub-cache/bin:/usr/lib/dart/bin"

. "$HOME/.cargo/env"
