ln -s  $HOME/dotfiles/.bash                  $HOME/.bash
ln -s  $HOME/dotfiles/.vim                   $HOME/.vim

ln -s  $HOME/dotfiles/.vimrc                 $HOME/.vimrc
ln -s  $HOME/dotfiles/.gvimrc                $HOME/.gvimrc

echo source $HOME/dotfiles/.vimrc >> $HOME/.vimrc
echo source $HOME/dotfiles/.gvimrc >> $HOME/.gvimrc
echo source $HOME/dotfiles/.bashrc >> %HOME%/.bashrc
echo source $HOME/dotfiles/.vim/Bundle.vim >> %HOME%/.bundle.vim

ln -s  $HOME/dotfiles/.bash_profile          $HOME/.bash_profile
ln -s  $HOME/dotfiles/.gitconfig             $HOME/.gitconfig
ln -s  $HOME/dotfiles/.inputrc               $HOME/.inputrc
ln -s  $HOME/dotfiles/.minttyrc              $HOME/.minttyrc
ln -s  $HOME/dotfiles/.tmux.conf             $HOME/.tmux.conf
