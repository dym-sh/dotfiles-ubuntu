# i3-config

> fullscreen apps switching

- fullsreen
- nothing except apps (no decorations, not even statusbar)
- dark-gray colors


## keys
- `Print` – save screenshot as a png file, [prtsc](../zsh/prtsc.sh)
- `Meta + Shift + Q` – quit current app
- `Meta + Shift + K` – restart i3 (reloads config in the process)
- `Ctrl + Alt + Delete`, `Meta + Alt + Break` – logout


### workspaces
- `Meta + [KP_]{0..9}` – switch to workspace Nr. (also automatically opens some [apps](#apps) if they not already running)
- `Meta + Alt + [KP_]{0..9}` – move window to workspace Nr.
- `Meta [+ Shift] + Tab` – switch to next [prev] workspace


### windows
- `Meta [+ Shift] + grave` – focus next window to the right [left]
- `Meta + Shift + KP_2` – move the window down
- `Meta + Shift + KP_4` – move the window to the left
- `Meta + Shift + KP_6` – move the window to the right
- `Meta + Shift + KP_8` – move the window up
- `Meta + Shift + KP_5` – toggle floating window
- `Meta + Shift + KP_0` – toggle fullscreen (same as `F11` in some apps)


### apps
- `Meta + Return` – universal launcher ([rofi](https://github.com/davatorium/rofi))
- `Meta + Shift + Return` – terminal ([alacritty](https://github.com/alacritty/alacritty))

#### `Meta + {0..9}` (numbers row)
0. -
1. browser ([firefox](https://firefox.com))
2. file explorer ([doublecmd](https://doublecmd.sourceforge.io))
3. text editor ([sublime text](https://sublimetext.com))
4. terminal ([alacritty](https://github.com/alacritty/alacritty))
5. -
6. -
7. -
8. -
9. -

#### `Meta + KP_{0..9}` (keypad)
0. items ([inventory](https://github.com/dym-sh/inventory))
1. webkit ([chromium](https://linuxmint-user-guide.readthedocs.io/en/latest/chromium.html))
2. p2p browser ([beaker](https://beakerbrowser.com))
3. music player ([rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox))
4. password manager ([keepassxc](https://keepassxc.org))
5. version control ([sublime merge](https://sublimemerge.com))
6. emoji and unicode picker ([gnome-characters](https://wiki.gnome.org/Apps/Characters))
7. image viewer ([xnview mp](https://xnview.com/en/xnviewmp))
8. 2D editor ([krita](https://krita.org/en))
9. 3D editor ([blender](https://blender.org))


### keyboard layouts
- `Meta + F1` – english (mac)
- `Meta + F2` – russian (phonetic_mac)
