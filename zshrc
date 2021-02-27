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
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n@${PWD/#$HOME/~}%{$fg[cyan]%}${vcs_info_msg_0_} %{$reset_color%}>> '
################# show git branch name in prompt ##################
