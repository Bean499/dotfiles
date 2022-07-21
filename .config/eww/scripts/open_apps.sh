#!/bin/bash
cd ~
if [[ "$1" == "vim" ]]; then
	eww close-all && kitty -e nvim
elif [[ "$1" == "steam" ]]; then
	eww close-all && steam
elif [[ "$1" == "qb" ]]; then
	eww close-all && qutebrowser
elif [[ "$1" == "spotify" ]]; then
	eww close-all && spotify
fi
