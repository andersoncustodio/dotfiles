# Tmux

#### Add Tmux Plugin Manager
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#### ~/.tmux.conf
    source ~/dotfiles/tmux/tmux.conf

    # additional tmux config

    # Initialize TMUX plugin manager
    # keep this line at the very bottom of ~/.tmux.conf
    run -b '~/.tmux/plugins/tpm/tpm'
