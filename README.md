# dotfiles acustodioo

## References

* http://amix.dk/vim/vimrc.html
* http://aurelio.net/doc/dotfiles/vimrc.txt
* http://aurelio.net/vim/vimrc-ivan.txt
* http://github.com/akitaonrails/vimfiles
* http://github.com/blueyed/dotfiles
* http://github.com/jceb/vimrc/
* http://github.com/nelstrom/dotfiles
* http://github.com/rtomayko/dotfiles
* http://github.com/scrooloose/vimfiles
* http://snipt.net/voyeg3r/tag/vimrc
* http://vimcasts.org
* http://github.com/skwp/dotfiles

## Dependencies

### OS X

	$ brew install coreutils zsh ctags git macvim ack

	$ rvm get head --auto-dotfiles

### Arch Linux

	$ sudo pacman -S zsh openssh git gvim ctags ncurses curl wmctrl ack

### Ubuntu

	$ sudo apt-get install zsh git vim-gtk exuberant-ctags ncurses-term curl wmctrl ack-grep

### Set zsh as your login shell:

	chsh -s $(which zsh)

## Install

### Clone repository

	git clone git://github.com/acustodioo/dotfiles.git

### Create symbol link

	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	ln -s ~/dotfiles/vim ~/.vim
	ln -s ~/dotfiles/gvim ~/.gvim
	ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

<!-- vim:noet -->
