# dotfiles Anderson Custódio

## Dependencies

### Fira Code regular Nerd Font Complete

    https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

### Packages

#### OS X

    brew install coreutils fish git neovim ctag ag ranger

#### Arch Linux

    sudo pacman -S fish openssh git gvim ctags ncurses curl

#### Ubuntu

    sudo add-apt-repository -y ppa:neovim-ppa/stable && \
    sudo apt-get -y update && \
    sudo apt-get install -y fish git neovim exuberant-ctags ncurses-term curl wmctrl silversearcher-ag python3-pip ranger ripgrep


## Configuration

### Set fish as your login shell:

    chsh -s $(which fish)

### Clone repository

    git clone https://github.com/andersoncustodio/dotfiles.git
