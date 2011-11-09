# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# rvm use
RVM_PATH="$HOME/.rvm/scripts/rvm"
function rvm_ps1() {
    RVMP=`rvm-prompt i v`
    [[ $RVMP != '' ]] && echo ' ('$RVMP')'
}

# Bash customisations to be syncronised between machines.
PS1='\[\e[1;1m\]\u@\h\[\e[1;31m\]'
PS1+=' \a$PWD\[\e[0m\]'
[[ -s $RVM_PATH ]] && source $RVM_PATH && PS1+='`rvm_ps1`'
[[ -s '/usr/bin/git' ]] && PS1+='\a$(__git_ps1 " [%s]")'
PS1+='\n\$\[\e[0m\] '

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append history to ~\.bash_history when exiting shell
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export EDITOR="vim"

# put ~/bin on PATH if you have it
test -d "$HOME/bin" && PATH="$HOME/bin:$PATH"

# notify of bg job completion immediately
set -o notify

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# .. => cd ..
# .. 2 => cd .. && cd ..
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

# vim:et:sw=4:ts=4
