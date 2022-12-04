# Tmux

#### Add Tmux Plugin Manager

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#### ~/.tmux.conf

    source ~/dotfiles/tmux/tmux.conf

    # additional tmux config

    # Initialize TMUX plugin manager
    # keep this line at the very bottom of ~/.tmux.conf
    run -b '~/.tmux/plugins/tpm/tpm'


## Keymap

| Keymap              | Description                                                                                                         |
| :---                | :---                                                                                                                |
| C-Space d           | Detach from the current session.                                                                                    |
| C-Space %           | Split the window into two panes horizontally.                                                                       |
| C-Space "           | Split the window into two panes vertically.                                                                         |
| :swap-wnidow -t <n> | It changes the position of the tmux window from place where <n> is the number to which the current window should go |
