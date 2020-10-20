if cat ~/.zshrc | grep 'source ~/dotfiles/zshrc'; then
    echo "zshrc is already configured, skipping."
else
    echo 'source ~/dotfiles/zshrc' >> ~/.zshrc
fi
