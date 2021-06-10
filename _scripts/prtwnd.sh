#!/usr/bin/zsh

# print screen current window

WND=`xprop -root \
   | grep '_NET_ACTIVE_WINDOW(WINDOW)' \
   | grep -oE '0x\w+'
   `

import -window "$WND" \
  "/Data/_/PrtWnd--$(date '+%Y%m%d@%H%M%S').png"
