#!/bin/env bash

# Options for powermenu

both="monitor & laptop"
laptop="laptop"
monitor="monitor"

# Get answer from user via rofi
# selected_option=$(echo "$both
# $laptop
# $monitor" | rofi -dmenu\
#                   -i\
#                   -p "screen layouts"\
#                   -width "15"\
#                   -lines 3\
#                   -line-margin 3\
#                   -line-padding 10\
#                   -scrollbar-width "0" )

# Get answer from user via dmenu
. "${HOME}/.cache/wal/colors.sh"
selected_option=$(echo "$both
$laptop
$monitor" | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"
)

# Do something based on selected option
if [ "$selected_option" == "$both" ]
then
    ~/.scripts/screenlayouts/both.sh
elif [ "$selected_option" == "$monitor" ]
then
    ~/.scripts/screenlayouts/monitor.sh
elif [ "$selected_option" == "$laptop" ]
then
    ~/.scripts/screenlayouts/laptop.sh
else
    echo "No match"
fi

source ~/.cache/wal/colors.sh
feh --bg-fill $wallpaper 
