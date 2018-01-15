# get the git branch
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[1;32m\]\h:\W \$ \[\e[m\]"
 export PS1

# git aliases
alias gs='git status -s'
alias gl='git lg'
alias gco='git checkout'
alias gas='git add .; git status -s'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
