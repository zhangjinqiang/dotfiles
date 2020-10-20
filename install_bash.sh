if [ -e ~/.bashrc ]; then
  if cat ~/.bashrc | grep 'source ~/dotfiles/bashrc'; then
    echo "bashrc is already configured, skipping."
  else
    echo -e "\n#This is JQ\'s personal configuraiton\nsource ~/dotfiles/bashrc" >> ~/.bashrc
  fi
elif [ -e ~/.bash_profile ]; then
  if cat ~/.bash_profile | grep 'source ~/dotfiles/bashrc'; then
    echo "bash_profile is already configured, skipping."
  else
    echo -e "\n#This is JQ\'s personal configuraiton\nsource ~/dotfiles/bashrc" >> ~/.bash_profile
  fi
fi
