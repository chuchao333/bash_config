# Set the PS1 prompt to echo useful (and color-coded) info 
# Note: Colors match molokai theme!
# Codes: http://misc.flogisoft.com/bash/tip_colors_and_formatting

function fgcolor()
{
	local color=$1
	local bold=$2
	if [ "$bold" == "bold" ]; then
		echo '\e[1;38;5;'"${color}m"
	else
		echo '\e[0;38;5;'"${color}m"
	fi
}

GRAY=245
BLUE=37
WHITE=255
PINK=198

GRAY=$(fgcolor $GRAY)
BLUE=$(fgcolor $BLUE bold)
WHITE=$(fgcolor $WHITE)
PINK=$(fgcolor $PINK)

export PS1="\[$GRAY\]\u@\h:${debian_chroot:+($debian_chroot)}\[$BLUE\]\w\[$GRAY\]\$(__git_ps1 '(\[$PINK\]%s\[$GRAY\])')\[$GRAY\]\\n$\[$WHITE\] "

