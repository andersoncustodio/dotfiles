# dotfiles acustodioo

## References

* http://github.com/rtomayko/dotfiles
* http://amix.dk/vim/vimrc.html
* http://aurelio.net/doc/dotfiles/vimrc.txt
* http://github.com/scrooloose/vimfiles
* http://vimcasts.org
* http://snipt.net/voyeg3r/tag/vimrc
* http://github.com/jceb/vimrc/
* http://github.com/nelstrom/dotfiles
* http://aurelio.net/vim/vimrc-ivan.txt

## Dependencies

### Arch Linux

	# pacman -S git gvim ctags ncurses curl wmctrl

### Ubuntu

	$ sudo apt-get install git vim-gtk exuberant-ctags ncurses-term curl wmctrl

## Installing

### Creating folder for temporary files

	mkdir ~/.tmp

### Cloning repository

	git clone --recursive git://github.com/acustodioo/dotfiles.git

### Update submodules

	git submodule foreach git pull

<!-- vim:noet -->
