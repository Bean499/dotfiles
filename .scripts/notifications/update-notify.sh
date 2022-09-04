#!/bin/sh
amount=$(checkupdates | wc -l)
icon="~/.scripts/notifications/arch.png"
if [ "$amount" = 1 ];
then
	notify-send "$amount update is available." "Run pac-update to update." --icon="$icon"
elif [ "$amount" != "0" ];
then
	notify-send "$amount updates are available." "Run pac-update to update." --icon="$icon"
fi
