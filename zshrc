export TERM=xterm-256color

alias gk="git log --graph --abbrev-commit --pretty=oneline --decorate -5"

################# show git branch name in prompt ##################
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n@${PWD/#$HOME/~} %{$fg[cyan]%}${vcs_info_msg_0_} %{$reset_color%}>>'
################# show git branch name in prompt ##################
