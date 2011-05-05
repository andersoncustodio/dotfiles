# dotfiles acustodioo #

Tested only on Linux

## References ##

* http://github.com/rtomayko/dotfiles
* http://amix.dk/vim/vimrc.html
* http://aurelio.net/doc/dotfiles/vimrc.txt
* http://github.com/scrooloose/vimfiles
* http://vimcasts.org
* http://github.com/akitaonrails/vimfiles
* http://snipt.net/voyeg3r/tag/vimrc
* http://github.com/jceb/vimrc/
* http://github.com/nelstrom/dotfiles
* http://aurelio.net/vim/vimrc-ivan.txt

## Installing ##

## Dependencies ##

Arch Linux:

	$ pacman -S gvim ruby ctags ncurses

Ubuntu:

	$ apt-get install gvim ruby exuberant-ctags ncurses-term

### Creating folder for temporary files ###

	mkdir ~/.tmp

### Cloning repository ###

	git clone git://github.com/acustodioo/dotfiles.git ~/dotfiles

### Initializing and updating submodules ###

	cd ~/dotfiles
	git submodule update --init

### Installing Command-T ###

	cd ~/dotfiles/vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make

### Setup String

	git clone git://github.com/acustodioo/dotfiles.git ~/dotfiles && cd ~/dotfiles && git submodule update --init && cd ~/dotfiles/vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make && cd

### Creating symbolic link ###

	ln -s ~/dotfiles/vim/vimrc ~/.vimrc
	ln -s ~/dotfiles/gitconfig ~/.gitconfig 
	ln -s ~/dotfiles/bashrc ~/.bashrc
