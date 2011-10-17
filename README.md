# dotfiles acustodioo

Tested only on Linux

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

	# pacman -S git gvim ctags ncurses curl

### Ubuntu

	$ sudo apt-get install git vim-gtk exuberant-ctags ncurses-term curl

## Installing

### Creating folder for temporary files

	mkdir ~/.tmp

### Cloning repository

	git clone git://github.com/acustodioo/dotfiles.git ~/dotfiles

### Initializing and updating submodules

	cd ~/dotfiles
	git submodule update --init

### Creating symbolic link

	ln -s ~/dotfiles/vim/vimrc ~/.vimrc
	ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
	echo "source ~/dotfiles/bashrc" >> ~/.bashrc
	ln -s ~/dotfiles/gitconfig ~/.gitconfig 

### Update submodules

    git submodule foreach git checkout master
    git submodule foreach git pull

## Setup String

	git clone git://github.com/acustodioo/dotfiles.git ~/dotfiles && cd ~/dotfiles && git submodule update --init
