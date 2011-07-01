# rvm use
function rvm_ps1() {
    RVMP=`rvm-prompt i v`
    [[ $RVMP != '' ]] && echo ' ('$RVMP')'
}

# Bash customisations to be syncronised between machines.
PS1='\[\e[1;1m\]\u@\h\[\e[1;31m\]'
PS1+=' \a$PWD\[\e[0m\]'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && PS1+='`rvm_ps1`'
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

# vim:et:sw=4:ts=4
