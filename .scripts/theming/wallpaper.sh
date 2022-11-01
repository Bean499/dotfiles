#!/bin/sh

# Get full path of wallpaper
walldir=$HOME'/pics/1 wallpapers'
wallpaper="$walldir/$1.png"

# Set wallpaper using pywal
wal -i "$wallpaper"

# Most of the below need to wait a bit for the wal cache to generate
sleep 0.5s

# qtile cmd-obj -o cmd -f restart
wal-steam
cp ~/.cache/wal/colors.Xresources ~/.xresources
cp ~/.cache/wal/betterlockscreenrc ~/.config/betterlockscreenrc
cp ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
~/.scripts/theming/update-gtkrc.py
~/.scripts/theming/lockscreen.py
xrdb ~/.xresources
pywal-discord
betterlockscreen -u "$wallpaper"
