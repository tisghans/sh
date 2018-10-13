_git_branch() {
  local git_branch="$(git symbolic-ref --short HEAD 2>/dev/null)"

  if [ -n "$git_branch" ]; then
    echo "$git_branch "
  fi
}

_git_dirty() {
  eval 'git diff --no-ext-diff --quiet 2>/dev/null'
  unstaged_ret_code=$?

  eval 'git diff --no-ext-diff --cached --quiet 2>/dev/null'
  staged_ret_code=$?

  local dirty_str=""

  if [[ $unstaged_ret_code == 1 ]]; then
    dirty_str+='*'
  fi

  if [[ $staged_ret_code == 1 ]]; then
    dirty_str+='+'
  fi

  # add a space at the end if status string has a value
  if [[ -n $dirty_str ]]; then
    dirty_str+=' '
  fi

  echo "$dirty_str"
}
