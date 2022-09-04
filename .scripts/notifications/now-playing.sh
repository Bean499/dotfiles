#!/bin/sh

titleold=""
titlenew=""

while true
do
	titleold=$titlenew
	titlenew=$(playerctl metadata title)
	soundcloud=$(playerctl metadata title | grep -oi -F Soundcloud)
	if [ "$titleold" != "$titlenew" ] && [ "$soundcloud" != "Soundcloud" ] && [ "$soundcloud" != "SoundCloud" ]
	then
		sleep 0.1s
		art=$(playerctl metadata mpris:artUrl)
		artist=$(playerctl metadata artist)
		if [ "$art" = "" ]
		then
			art="audio-speakers"
		fi
		notify-send "$titlenew" "$artist" --icon="$art" --expire-time=5000 --category=music
	fi
done
