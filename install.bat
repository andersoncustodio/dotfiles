MKLINK /D %HOME%\.bash                 %HOME%\dotfiles\.bash
MKLINK /D %HOME%\.vim                  %HOME%\dotfiles\.vim

echo source %HOME%\dotfiles\.vimrc >> %HOME%\.vimrc
echo source %HOME%\dotfiles\.gvimrc >> %HOME%\.gvimrc
echo source "%HOME%\dotfiles\.bashrc" >> %HOME%\.bashrc
echo source %HOME%\dotfiles\.vim\Bundle.vim >> %HOME%\.bundle.vim

MKLINK    %HOME%\.bash_profile         %HOME%\dotfiles\.bash_profile
MKLINK    %HOME%\.gitconfig            %HOME%\dotfiles\.gitconfig
MKLINK    %HOME%\.inputrc              %HOME%\dotfiles\.inputrc
MKLINK    %HOME%\.minttyrc             %HOME%\dotfiles\.minttyrc
MKLINK    %HOME%\.tmux.conf            %HOME%\dotfiles\.tmux.conf
