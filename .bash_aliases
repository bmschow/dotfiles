# get the git branch
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[1;32m\]\h:\W \$ \[\e[m\]"
 export PS1

# git aliases
alias gs='git status -s'
alias glp="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(green)%s%C(reset) %C(bold red)- %an%C(reset) %C(bold magenta)(%G?)%C(reset) %C(bold yellow)%d%C(reset)' --all"
alias gco='git checkout'
alias gas='git add .; git status -s'
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
alias config='/usr/bin/git --git-dir=/home/brandon/.cfg/ --work-tree=/home/brandon'
alias python3='/usr/bin/python3.6'
