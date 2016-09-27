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
