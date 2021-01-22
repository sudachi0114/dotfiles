# bash configration file
ln -s ~/dotfiles/.bashrc.ubuntu ~/.bashrc

# emacs
ln -s ~/dotfiles/inits ~/.emacs.d/inits
ln -s ~/dotfiles/init.el ~/.emacs.d/init.el

# vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vimrc.maps ~/.vimrc.maps

# tmux (and screen) configration file
ln -s ~/dotfiles/.screenrc ~/.screenrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# git config
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

exec $SHELL -l
