#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------

# navigational aliases

alias rm='rm -rf'
alias l='ls -CF'                            # Preferred 'ls' implementation
alias cp='cp -riv'                          # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias la='ls -CF -a'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias c='clear'                             # Clear terminal display
alias e='exit'                              # Exit current session
alias get='curl -OL'			    # download a file, following any redirects

_cmkdir()
{
	mkdir $1
	cd $1
}
alias cmkdir=_cmkdir

# app specific
alias py='python'
alias vi='vim'

# misc.
alias docs='cd ~/Documents'
alias dsk='cd ~/Desktop'
alias dls='cd ~/Downloads'
alias bashr='. ~/.bash_profile'
alias f='open -a Finder ./'                 # Opens current directory in MacOS Finder
alias sshi='ssh -ServerAliveInterval=15'
alias g1='ssh root@g1.gurinderhans.me'

#   ---------------------------
#   NETWORKING
#   ---------------------------

alias servethis='python -m SimpleHTTPServer 8000' 
alias ips='curl http://icanhazip.com'       # Public facing IP Address
alias netCons='lsof -i'                     # Show all open TCP/IP sockets
alias speedtest='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
