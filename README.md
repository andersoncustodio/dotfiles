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

	brew install coreutils zsh ctags git macvim ack

### Arch Linux

	sudo pacman -S zsh openssh git gvim ctags ncurses curl wmctrl ack

### Ubuntu

	sudo apt-get install zsh git neovim exuberant-ctags ncurses-term curl wmctrl ack-grep silversearcher-ag python3-pip
    sudo pip3 install --upgrade neovim

### Set zsh as your login shell:

	chsh -s $(which zsh)

## Install

### Clone repository

    git clone https://github.com/andersoncustodio/dotfiles.git

### ~/.gitconfig

    [include]
        path = ~/dotfiles/gitconfig

    # additional settings
    # [user]
    #     name = andersoncustodio
    #     email = contato@andersoncustodio.com

### ~/.vimrc

    source ~/dotfiles/vim/vimrc

    " additional settings
    " color gruvbox

### ~/.bundlerc

    " additional vim plugin
    " Plug 'morhetz/gruvbox'

### ~/.tmux.conf

    source ~/dotfiles/tmux/tmux.conf

    " additional tmux config
