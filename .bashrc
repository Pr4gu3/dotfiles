
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
export PATH=$PATH:~/.config/odin

# Colors
export ORANGE="\e[1;32m"
export YELLOW="\e[1;33m"
export RED="\e[1;31m"
export RESET="\e[0m"

PS1="${ORANGE}[\w]${YELLOW}|${RED}>${RESET} "

. "$HOME/.cargo/env"

# odm is a function used to clone git projects into the shared directory of the odin language
function odm(){
	if [ $# -lt 1 ]; then
		echo "please provide a link to a git project"
		return
	fi

	rm -rf $HOME/.config/odin/shared/$1
	mkdir -p $HOME/.config/odin/shared/$1
	if [ $# -gt 1 ]; then
		git clone --branch $2 https://$1 $HOME/.config/odin/shared/$1
	else
		git clone https://$1 $HOME/config/odin/shared/$1
	fi
}

# goto is a function used to 'cd' into specific directories quicker
function goto(){
	if [ $# -ne 1 ]; then
	    echo "not enough arguments were provided"
	    return
	fi

	case $1 in
	    dwm)
		cd "$HOME/.config/suckless/dwm"
		;;
	    dmenu)
		cd "$HOME/.config/suckless/dmenu"
		;;
	    st)
		cd "$HOME/.config/suckless/st"
		;;
	    slstatus)
		cd "$HOME/.config/suckless/slstatus"
		;;
	esac
}
