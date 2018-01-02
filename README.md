# dotfiles
install by running 
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

git clone --bare <git-repo-url> $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config checkout

then run dotinit.sh
