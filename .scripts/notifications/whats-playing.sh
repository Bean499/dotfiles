#!/usr/bin/env bash

title=$(playerctl metadata title)
artist=$(playerctl metadata artist)

art=$(playerctl metadata mpris:artUrl)
if [ "$art" = "" ]
then
	art="audio-speakers"
fi

# echo $art

notify-send "$title" "$artist" --icon="$art"
