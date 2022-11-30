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
