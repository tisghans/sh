export CSH=$HOME/git/sh

# add color to terminal
export CLICOLOR=1
export LSCOLORS=Bxfxcxdxbxegbhabagacad

# ignore duplicate lines or lines starting with space in history
HISTCONTROL=ignoreboth

# enable fwd-i-search
stty -ixon

# zsh enable case-insensitive matching
if [[ "$SHELL" == *"zsh"* ]]; then
	autoload -Uz compinit && compinit
	zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
fi

# load aliases
source $CSH/aliases/base.sh
source $CSH/aliases/git.sh
source $CSH/aliases/tmux.sh
