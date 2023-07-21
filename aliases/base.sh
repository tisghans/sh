alias c='clear'
alias d='cd'
alias x='exit'
alias l='ls -F'
alias e='vim -u $CSH/vim/mac.vim'
alias f='open .'
alias rm='rm -r'
alias cp='cp -r'
alias ls='ls --color=auto'
alias la='ls -aF'
alias ll='ls -lhFA'
alias ..='cd ..'
alias ...='cd ../..'
alias dsk='cd ~/Desktop'
alias dls='cd ~/Downloads'
alias docs='cd ~/Documents'
alias sshi='ssh -ServerAliveInterval=15'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'

## tmux
alias tmux='tmux -f $CSH/tmux/conf'
alias tmx='tmux -f $CSH/tmux/conf'
alias tml='tmux ls'

_tmux_attach() {
  if [ $# -eq 0 ]; then
    tmux attach -d -t 0 || tmux new
  else
    tmux attach -d -t $1
  fi
}
alias tma=_tmux_attach
