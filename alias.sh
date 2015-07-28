# Make sure this file is imported after the bashrc_extra script.
if test ! $_READ_BASHRC_EXTRA || [ $_READ_BASHRC_EXTRA != 1 ]; then
  >&2 echo 'Warning: `aliases` script should be read *after* `bashrc_extra`.'
  >&2 echo '         Aliases may not work as expected.'
fi

((--_READ_BASHRC_EXTRA))

# Better usage or output
alias diff='colordiff'
alias less="less -r" # color support
alias ls="ls -Bhv --color=always --group-directories-first --hide=*pyc"
alias thttpd='thttpd -nos -M 0' # symlinks outside cwd, nocache
alias tmux="tmux -2" # 256color
alias vi='vi -p' # Open multiple files in tabs
alias wget='wget -p -nd' # Page reqs and no directories

# Shortcuts 
alias acki='ack -i'
alias cdb='cd-base'
alias cdp='cd-base'
alias clean='clean_tempfiles'
alias go='gnome-open'
alias paste='xclip -o -selection clipboard'
alias scan='arp-scan --interface=eth0 --localnet'
alias sighup='kill -HUP'
alias upload='rsync -zrpvuL --exclude="^."'
alias v='vi'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Silver Surfer
alias agj='ag --java'
alias agp='ag --python'
alias agr='ag --ruby'


# Git shortcuts
alias branch='git branch'
alias checkout='git checkout'
alias commit='git commit -a'
alias describe='git describe'
alias merge='git merge'
alias state='git status'

alias web='python -m SimpleHTTPServer'

# Larger, custom stuff
alias resolution='xdpyinfo  | grep "dimensions:"'
alias reso='resolution'

# Directory Shortcuts
alias symlinks='ls -la | ack "\-\>"' # List symlinks
alias symlink='symlinks'
alias syms='symlinks'
alias ll='symlinks'
alias hidden='ls -d .*' # List hidden
alias lh='hidden'

# More directory list options
alias lsl='ls -l'
alias lsa='ls -a'
alias lst='ls --sort=time'
alias lslt='lsl --sort=time'
alias lstl='lsl --sort=time'
alias lsla='lsl -a'
alias lsal='lsl -a'
alias lsalt='lslt -a'
alias lsatl='lslt -a'
alias lslat='lslt -a'
alias lslta='lslt -a'
alias lstal='lslt -a'
alias lstla='lslt -a'

# Reminders
alias quit='echo "No, exit. Get it right."'
