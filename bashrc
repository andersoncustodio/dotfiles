# Bash customisations to be syncronised between machines.
PS1='\[\e[1;1m\]\u@\h\[\e[1;31m\]\a$PWD\[\e[0m\]\[\e[1;2m\]\a$(__git_ps1 " [%s]")\n\$\[\e[0m\] '

alias ls='ls --color=tty'
alias grep='grep --colour=auto'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# History
export HISTCONTROL=erasedups # when adding an item to history, delete itentical commands upstream
export HISTSIZE=10000 # save 10000 items in history
shopt -s histappend # append history to ~\.bash_history when exiting shell

# Reload .bashrc
alias refresh='. ~/.bashrc'
