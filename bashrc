export TERM=xterm-256color

alias gk="git log --graph --abbrev-commit --pretty=oneline --decorate -5"
alias gb="git branch"
alias gbr="git branch -r"

################# show git branch name in prompt ##################
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$  \n| => "
export PS2="| => "
################# show git branch name in prompt ##################
