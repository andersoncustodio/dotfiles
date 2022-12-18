# Kitty

#### Add Dracula Theme

    curl -fLo ~/.config/kitty/diff.vim --create-dirs \
        https://raw.githubusercontent.com/dracula/kitty/master/diff.conf

    curl -fLo ~/.config/kitty/dracula.vim --create-dirs \
        https://raw.githubusercontent.com/dracula/kitty/master/dracula.conf

#### Add config

    printf "include ~/dotfiles/kitty/kitty.conf\n\ninclude dracula.conf\n" >> ~/.config/kitty/kitty.conf

