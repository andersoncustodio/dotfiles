# References: http://www.jeremysands.com/archlinux/gentoo-bashrc-2008.0
#             https://github.com/nelstrom/dotfiles

#echo "loading .bashrc"
if [[ -f ~/.profile ]] ; then
	source ~/.profile
fi

# Bash customisations to be syncronised between machines.
PROMPT_COMMAND=''
PS1='\[\e[1;31m\]\a$PWD\a$(__git_ps1 " [GIT=%s]")\n\[\e[0m\]\[\e[1;2m\]\$\[\e[0m\] '

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
