
#   __ _     _
#  / _(_)___| |__  _ __ ___
# | |_| / __| '_ \| '__/ __|
# |  _| \__ \ | | | | | (__
# |_| |_|___/_| |_|_|  \___|

# FISH FUNCTIONS -------------------------------------------------------------------------- {{{
function fish_prompt
	#echo -e (set_color green)" ┏"(set_color cyan) $USER@$hostname (set_color blue)"✮"(set_color cyan) (prompt_pwd) (set_color green) "\n ┗━▶ "
	echo -e (set_color green)$USER(set_color white)" on "(set_color green)$hostname(set_color white)" in "(set_color green)(prompt_pwd)(set_color blue)" ⟩ "
end

function fish_right_prompt
	echo (set_color white)"["(date '+%H:%M:%S')"]"
end

function fish_greeting
	#pridefetch -f nonbinary
	#beanfetch -f nonbinary
	#catfetch
	#echo "" && pfetch
	#pokemon-colorscripts -r --no-title
	#bunnyfetch
end
# }}}

# VARIABLES ------------------------------------------------------------------------------- {{{
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export EDITOR=nvim
export VISUAL=nvim

set PATH $HOME/.emacs.d/bin $HOME/.local/bin $HOME/.cargo/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin $HOME/.local/lua-language-server/bin
# }}}

# XDG-NINJA CLEANUP ----------------------------------------------------------------------- {{{
export ANDROID_HOME="$XDG_DATA_HOME"/android
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
# export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export WINEPREFIX="$XDG_DATA_HOME"/wine

alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
# }}}

# THEME ----------------------------------------------------------------------------------- {{{
fish_config theme choose "fish default"
# }}}

# ALIASES --------------------------------------------------------------------------------- {{{
alias pac-update="yay -Syu"
alias pac-autoremove="yay -Qdtq | yay -Rs -"
alias pip-update="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

alias screenshot="scrot -e 'mv $f ~/Screenshots/ 2>/dev/null'"

alias mixtape="clear && mpv https://soundcloud.com/bean499/likes --force-window --script=~/.config/mpv/mpris.so --shuffle"

alias open-dashboard="~/.config/eww/scripts/open_dashboard.sh"

alias powertop="sudo powertop"

alias x="startx"

alias todo="nvim ~/Documents/todo.md"

alias ghcode=~/Documents/github-codes.sh

alias setwall="~/.scripts/theming/wallpaper.sh"
alias dunst-update="~/.scripts/theming/dunst-gaps.py"

# Replace base commands with exa
alias ls="exa -lah --icons --no-permissions"
# alias tree=exa -a --icons --tree		# Shows hidden files
alias tree="exa --icons --tree"			# Doesn't show hidden files

# Confirm before doing the thing
alias mv="mv -i"
alias rm="rm -i"
alias cp="cp -i"
alias ln="ln -i"

# File manager
alias fm="ranger"

# Clock & stopwatch
alias clock="tty-clock -sc"
alias stopwatch="tty-stopwatch -scD"
alias catclock="xclock"
# }}}

# ELECTRON FORGE -------------------------------------------------------------------------- {{{
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/bean/Documents/Projects/chess/node_modules/tabtab/.completions/electron-forge.fish ]; and . /home/bean/Documents/Projects/chess/node_modules/tabtab/.completions/electron-forge.fish
# }}}

# AUTO START X ---------------------------------------------------------------------------- {{{
if test -z "$DISPLAY"
	figlet "Welcome" | lolcat
	if test "$XDG_VTNR" -eq "1"
		echo -en "Loading X Window System..."
		exec startx
	else
		echo -e "Loading Fish Shell...\n"
	end
end
# }}}
