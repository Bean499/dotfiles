#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

# dmenu_run improved
# command ending with '!', is started in the terminal.

test -s "$HOME"/.dmenurc && . "$HOME"/.dmenurc

cmd="$(dmenu_path | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" "$@")"

case $cmd in
    *\!) "${TERMINAL:-kitty}" -e "${cmd%?}" & ;;
    *)   "${cmd}" & ;;
esac
