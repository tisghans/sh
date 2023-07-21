alias gs='git status'
alias gb='git branch'
alias glg='git log'
alias gpl='git pull'
alias gcm='git commit -m'
alias gdf='git diff'
alias gco='git checkout'
alias gfo='git fetch origin'
alias gall='git add .'
alias gcaa='git commit -a --amend -C HEAD'

_gitlog()
{
	git log -n $1 --graph --abbrev-commit --pretty=format:'%Cred%h %Cgreen%ad%C(yellow)%d %Creset%s' --date=format-local:'%Y-%m-%d %H:%M'
}
alias gl='_gitlog 11'
alias gll='_gitlog -1'

_gpo()
{
	if [[ $1 == "-r" ]]; then
		git push -u origin HEAD
	else
		git push origin "$@"
	fi
}
alias gpo=_gpo

_gbd()
{
	if [[ $2 == "-r" ]]; then
		git push origin --delete $1
	else
		git branch -D $1
	fi
}
alias gbd=_gbd

if [[ "$SHELL" != *"zsh"* ]]; then
  return
fi

function _git_branch_complete(){
  branches=($(git branch | cut -c 3-))
  compadd -a branches
}

compdef _git_branch_complete git checkout
compdef _git_branch_complete git branch
compdef _git_branch_complete _gbd
