export TERM=xterm-256color

# setup git alias
git config --global alias.br branch
git config --global alias.rbr 'branch -r'
git config --global alias.cm commit
git config --global alias.co checkout
git config --global alias.df diff
git config --global alias.last 'log -1 HEAD'
git config --global alias.pl 'log --graph --abbrev-commit --pretty=oneline --decorate -5'
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'

################# show git branch name in prompt ##################
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$  \n| => "
export PS2="| => "
################# show git branch name in prompt ##################
