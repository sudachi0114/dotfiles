ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc.numac ~/.bashrc
ln -sf ~/dotfiles/inits ~/.emacs.d/inits
ln -sf ~/dotfiles/init.el ~/.emacs.d/init.el
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc.maps ~/.vimrc.maps
ln -sf ~/dotfiles/.screenrc ~/.screenrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
exec $SHELL -l
