# i3-config

> fullscreen apps switching

- fullsreen
- nothing except apps (no decorations, not even statusbar)
- dark-gray colors


## keys
- `Print` – screenshot full monitor and save as png in `/Data/_/`
- `Meta + Q` – quit current app
- `Meta + Shift + K` – restart i3 (reloads config in the process)
- `Ctrl + Alt + Delete`, `Meta + Alt + Break` – logout

### desktops
- `Meta + [KP_]{0..9}` – switch to desktop Nr. (also automatically opens some [apps](#apps) if they not already running)
- `Meta + Alt + {0..9}` – move window to desktop Nr.
- `Meta [+ Shift] + Tab` – switch to next [prev] desktop

### windows
- `Meta [+ Shift] + grave` – focus next window on the right [left]
- `Meta + Alt + KP_2` – move the window down
- `Meta + Alt + KP_4` – move the window to the left
- `Meta + Alt + KP_6` – move the window to the right
- `Meta + Alt + KP_8` – move the window up
- `Meta + Alt + KP_5` – toggle floating window
- `Meta + Alt + KP_0` – toggle fullscreen (same as `F11` in some apps)

### apps
- `Meta + Return` – universal launcher ([rofi](https://github.com/davatorium/rofi))
- `Meta + Shift + Return` – terminal ([alacritty](https://github.com/alacritty/alacritty))

#### `Meta + `
0. organizer ([inventory](https://github.com/dym-sh/inventory))
1. browser ([firefox](https://firefox.com))
2. file explorer ([doublecmd](https://doublecmd.sourceforge.io))
3. text editor ([sublime text](https://sublimetext.com))
4. terminal ([alacritty](https://github.com/alacritty/alacritty))

#### `Meta + KP_x` (numpad)
0. notes (`subl /Data/Notes/`)
1. another browser ([chromium](https://linuxmint-user-guide.readthedocs.io/en/latest/chromium.html))
2. _tbd_
3. music player ([rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox))
4. password manager ([keepassxc](https://keepassxc.org))
5. version control ([sublime merge](https://sublimemerge.com))
6. unicode table ([gucharmap](https://wiki.gnome.org/Apps/Gucharmap))
7. image viewer ([xnview mp](https://xnview.com/en/xnviewmp))
8. image editor ([krita](https://krita.org/en))
9. 3d editor ([blender](https://blender.org))

### keyboard layouts
- `Meta + F1` – english (mac)
- `Meta + F2` – russian (phonetic_mac)


## [install](install.sh)
``` sh
git clone https://github.com/dym-sh/i3-config.git
cd i3-config

# backup current config
mv ~/.config/i3/config \
   ~/.config/i3/config_`date +\%Y\%m\%d\%H\%M`.bak

# link new config
ln -s `pwd`/config \
   ~/.config/i3/config

# restart i3
i3-msg restart
```


## mirrors
- https://github.com/dym-sh/i3-config
- https://gitlab.com/dym-sh/i3-config
- https://dym.sh/i3-config
- hyper://d6a0ff9453bc48cc0f25ac225a797451577b81f05055d21323bd74f407e6eb44 /[?](https://beakerbrowser.com)


## license
[mit](license)
