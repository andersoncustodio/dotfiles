# Vim

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


### Commands

Command             | Description
:---                | :---
:NR                 | Open the selected region in a new narrowed window
:Flog or :Flogsplit | View commits
