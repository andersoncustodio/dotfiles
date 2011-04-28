# Bash customisations to be syncronised between machines.
PS1='\[\e[1;1m\]\u@\h\[\e[1;31m\] \a$PWD\[\e[0m\]\a$(__git_ps1 " [%s]")\n\$\[\e[0m\] '

alias ls='ls --color=tty'
alias grep='grep --colour=auto'
alias tree='tree -C' # -C outputs colour

alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

alias t='tree'
alias tl='t | less -R' # -R makes less understand color

alias v='vim'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# History
export HISTCONTROL=erasedups # when adding an item to history, delete itentical commands upstream
export HISTSIZE=10000 # save 10000 items in history
shopt -s histappend # append history to ~\.bash_history when exiting shell


# .. => cd ..
# .. 2 => cd .. && cd ..
# Changes to repos-public directory.
# http://dpaste.org/E0aa/
function ..() {
	if [ "$1" == "" ]; then
		cd ..
	else
		for ((i=1; i <= $1; i++)); do
			cd ..
		done
	fi
}

# Fuzzy cd
# Usage:
# cdf public
# Changes to repos-public directory.
# http://dpaste.org/qhsb/
function cdf() {
	p=$(echo $* | tr "/" "\n")

	if [ $(echo $1 | cut -b 1) == "/" ]; then
		cd /*$(echo $p | cut -d " " -f 1)*/
		p=$(echo $p | cut -d " " -f 2-)
	fi

	for f in $p; do
		cd *$f*/
	done
}
