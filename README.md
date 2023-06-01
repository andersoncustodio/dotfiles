# dotfiles Anderson Custódio

## Project Archived

For a long time I have kept some of the settings I use in my daily life in this repository,
the main idea was to share knowledge about settings in the vim editor.

The truth is that it's been a while since these settings have been outdated, I made another
one completely in Lua and it would be laborious to separate a good part of the code that I 
can't share and put it in this repository, and I also believe that it's not worth it for me
to do something completely modular that facilitates this sharing since nowadays there are 
numerous projects with this proposal.

I will be sharing a bit of what I know on my blog https://andersoncustodio.com for those who
are interested.


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
