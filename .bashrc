#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="\[\e[1m\][\[\e[m\]\[\e[2;5;172m\]\u\[\e[m\]@\[\e[2;5;153m\]\h\[\e[m\] \[\e[2;5;214m\]\W\[\e[m\]\[\e[1m\]]\[\e[m\]\\$ " 

set -o vi

export PATH=${HOME}/bin/:${HOME}/.local/bin:${PATH}


alias vim=nvim
alias getAnime="./programming/getAnime2/terminal/run.py"

neofetch



