# dotfiles Anderson Custódio

## Dependencies

### Source Code Pro
    https://github.com/adobe-fonts/source-code-pro/raw/release/TTF/SourceCodePro-Regular.ttf

### Packages

#### OS X
    brew install coreutils zsh git neovim ctag ag ranger

#### Arch Linux
    sudo pacman -S zsh openssh git gvim ctags ncurses curl

#### Ubuntu
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update

    sudo apt-get install zsh git neovim exuberant-ctags ncurses-term curl wmctrl silversearcher-ag python3-pip ranger


## Configuration

### Set zsh as your login shell:
    chsh -s $(which zsh)

### Prezto
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

### Clone repository
    git clone https://github.com/andersoncustodio/dotfiles.git

### Zsh

#### ~/.zprezto/runcoms/zshrc
    # Add last line
    source "$HOME/dotfiles/zsh/zshrc"

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

#### Install coc plugins
    :CocInstall coc-calc coc-css coc-emmet coc-highlight coc-html coc-json coc-marketplace coc-phpls coc-python coc-sql coc-tsserver coc-vimlsp

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
