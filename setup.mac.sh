ln -sf ~/projects/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/projects/dotfiles/.bashrc ~/.bashrc
ln -sf ~/projects/dotfiles/inits ~/.emacs.d/inits
ln -sf ~/projects/dotfiles/init.el ~/.emacs.d/init.el
ln -sf ~/projects/dotfiles/.vimrc ~/.vimrc
ln -sf ~/projects/dotfiles/.vimrc.maps ~/.vimrc.maps
ln -sf ~/projects/dotfiles/.screenrc ~/.screenrc
ln -sf ~/projects/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/projects/dotfiles/.gitconfig ~/.gitconfig
exec $SHELL -l
