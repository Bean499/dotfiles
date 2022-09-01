#!/usr/bin/env bash

x="$(setxkbmap -query | awk 'NR == 3 {print $2 }')"
if [ $x == "us" ]
then
	setxkbmap -layout gb
	notify-send "Keyboard layout changed" "Layout changed to English." --icon=keyboard
else
	setxkbmap -layout us
	notify-send "Keyboard layout changed" "Layout changed to American." --icon=keyboard
fi
