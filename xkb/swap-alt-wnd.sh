# Swap Alt and Wnd key
setxkbmap -option altwin:swap_alt_win
xmodmap -e "keysym Caps_Lock = Delete"
xmodmap -e "clear lock"
set bell-style none
