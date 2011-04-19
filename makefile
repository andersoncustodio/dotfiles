all: update links command-t

update:
	git submodule update --init

links:
	@echo Creating symbolic links
	ln -s ~/dotfiles/vim/ ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	
	ln -s ~/dotfiles/bashrc ~/.bashrc 

command-t:
	@echo Configuring Command-T
	cd ~/.vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make
