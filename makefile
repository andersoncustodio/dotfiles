install:
	#Starting submodule
	git submodule init
	git submodule update
	
	#Creating symbolic links
	ln -s ~/dotfiles/vim/ ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	
	ln -s ~/dotfiles/bashrc ~/.bashrc 
	
	#echo Creating temporary directory for vim
	mkdir ~/.vim/tmp		
	
	#echo Configuring Command-T
	cd ~/.vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make
