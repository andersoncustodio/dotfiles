# dotfiles Anderson Custódio

## Dependencies

### Source Code Pro
    https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete

### Packages

#### OS X
    brew install coreutils fish git neovim ctag ag ranger

#### Arch Linux
    sudo pacman -S fish openssh git gvim ctags ncurses curl

#### Ubuntu
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update

    sudo apt-get install fish git neovim exuberant-ctags ncurses-term curl wmctrl silversearcher-ag python3-pip ranger ripgrep


## Configuration

### Set fish as your login shell:
    chsh -s $(which fish)

### Clone repository
    git clone https://github.com/andersoncustodio/dotfiles.git


### Git

#### ~/.gitconfig
    [include]
        path = ~/dotfiles/git/gitconfig

    # additional settings
    # [user]
    #     name = andersoncustodio
    #     email = contato@andersoncustodio.com

### Vim

#### ~/.vimrc
    source ~/dotfiles/vim/vimrc

    " additional settings
    " Theme
    color gruvbox
    set bg=dark

#### ~/.vim/bundles.vim
    Plug 'morhetz/gruvbox'

#### ~/.config/nvim/init.vim
    source ~/.vimrc

### Tmux

#### Add Tmux Plugin Manager
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#### ~/.tmux.conf
    source ~/dotfiles/tmux/tmux.conf

    # additional tmux config

    # Initialize TMUX plugin manager
    # keep this line at the very bottom of ~/.tmux.conf
    run -b '~/.tmux/plugins/tpm/tpm'

### WSL

#### Clipboard 
    curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
    unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
    chmod +x /tmp/win32yank.exe
    sudo mv /tmp/win32yank.exe /usr/local/bin

### Windows Terminal
    Use example config in ~/dotfiles/windows-terminal
