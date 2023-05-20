#!/bin/sh

# dmenu_run improved
# command ending with '!', is started in the terminal.
test -s "$HOME"/.dmenurc && . "$HOME"/.dmenurc

# Import the colors (wal)
. "${HOME}/.cache/wal/colors.sh"
cmd="$(dmenu_path | dmenu -p ' ' -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" "$@")"

# Import the colors (solarized)
# . "${HOME}/.solarized.sh"
# cmd="$(dmenu_path | dmenu -p ' ' -nb "$color8" -nf "$color12" -sb "$color3" -sf "$color10" "$@")"

case $cmd in
    *\!) "${TERMINAL:-kitty}" -e "${cmd%?}" & ;;
    *)   "${cmd}" & ;;
esac
