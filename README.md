# dotfiles Anderson Custódio

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
	brew install coreutils zsh git neovim ctag ag ranger

### Arch Linux
	sudo pacman -S zsh openssh git gvim ctags ncurses curl
### Ubuntu
	sudo add-apt-repository ppa:neovim-ppa/stable 
	sudo apt-get update

	sudo apt-get install zsh git neovim exuberant-ctags ncurses-term curl wmctrl silversearcher-ag python3-pip ranger

### Set zsh as your login shell:
	chsh -s $(which zsh)

## Install

### Prezto
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

	setopt EXTENDED_GLOB
	for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
		ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
	done

### Add source in ~/.zprezto/runcoms/zshrc
    # Add last line
    source "$HOME/dotfiles/zsh/zshrc"

### Clone repository
    git clone https://github.com/andersoncustodio/dotfiles.git

### ~/.gitconfig
    [include]
        path = ~/dotfiles/git/gitconfig

    # additional settings
    # [user]
    #     name = andersoncustodio
    #     email = contato@andersoncustodio.com

### ~/.vimrc
    source ~/dotfiles/vim/vimrc
    " additional settings

### ~/.vim/bundles.vim
    Plug 'morhetz/gruvbox'

### ~/.vim/settings.vim
    " Theme
    color gruvbox
    set bg=dark

### ~/.config/nvim/init.vim
    source ~/.vimrc

#### Install coc plugins
    :CocInstall coc-css coc-html coc-tsserver coc-emmet

### ~/.bundlerc
    " additional vim plugin
    " Plug 'morhetz/gruvbox'

### ~/.tmux.conf
    source ~/dotfiles/tmux/tmux.conf
    " additional tmux config

#### Add Tmux Plugin Manager
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### Windows Terminal

#### Install Cascadia Code
https://github.com/microsoft/cascadia-code/releases

Use example config in ~/dotfiles/windows-terminal

