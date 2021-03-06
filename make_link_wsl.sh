#!/bin/sh

echo 'This script remove these files.'
echo 'If you need, backup these files before running script.'
echo '~/.bashrc'
echo '~/.zshrc'
echo '~/.tmux.conf'
echo '~/.config/nvim/'
echo '~/.config/starship.toml'
echo ''
read -p "ok? (y/N): " yn
case $yn in
  [yY]* ) break;;
  * ) 
    echo 'yeah.'
    exit 1;;
esac

rm -f ~/.bashrc
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
echo 'link .bashrc complete.'

rm -f ~/.zshrc
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
echo 'link .zshrc complete.'

rm -f ~/.tmux.conf
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo 'link .tmux.conf complete.'

mkdir -p ~/.config
rm -fr ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config/nvim
echo 'link nvim dir complete'

rm -f ~/.config/starship.toml
ln -sf ~/dotfiles/other/starship.toml ~/.config/starship.toml
echo 'link starship.toml complete'

