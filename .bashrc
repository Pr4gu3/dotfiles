#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pacman='sudo pacman'
alias shutdown='shutdown now'

# Exports
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/v

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

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
