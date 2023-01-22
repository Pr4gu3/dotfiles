#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

startx
clear
# Start neofetch to look smart
neofetch

# Aliases
alias clear='clear && neofetch'
alias ls='ls --color=auto'
alias shutdown='shutdown now'
alias soundbar='bluetoothctl connect 40:2F:86:E8:EF:E8'

# Exports
export PATH=$PATH:~/.config/code

# Colors
export ORANGE="\e[1;32m"
export YELLOW="\e[1;33m"
export RED="\e[1;31m"
export RESET="\e[0m"

PS1="${ORANGE}[\w]${YELLOW}|${RED}>${RESET} "

. "$HOME/.cargo/env"

# goto is a function used to 'cd' into specific directories quicker
function goto(){
	if [ $# -ne 1 ]; then
	    echo "not enough arguments were provided"
	    return
	fi

	case $1 in
	    dwm)
		cd "${HOME}/.config/suckless/dwm"
		;;
	    dmenu)
		cd "${HOME}/.config/suckless/dmenu"
		;;
	    st)
		cd "${HOME}/.config/suckless/st"
		;;
	    slstatus)
		cd "${HOME}/.config/suckless/slstatus"
		;;
	esac
}
