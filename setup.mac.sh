#!/bin/bash

# bash
ln -sf ~/projects/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/projects/dotfiles/.bashrc ~/.bashrc

# emacs
ln -sf ~/projects/dotfiles/inits ~/.emacs.d/
ln -sf ~/projects/dotfiles/init.el ~/.emacs.d/init.el

# vim
ln -sf ~/projects/dotfiles/.vimrc ~/.vimrc
ln -sf ~/projects/dotfiles/.vimrc.maps ~/.vimrc.maps

# tmux (and screen)
ln -sf ~/projects/dotfiles/.screenrc ~/.screenrc
ln -sf ~/projects/dotfiles/.tmux.conf ~/.tmux.conf

# git
ln -sf ~/projects/dotfiles/.gitconfig ~/.gitconfig

# fzf
ln -sf ~/projects/dotfiles/.fzf.bash ~/.fzf.bash
