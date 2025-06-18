# .bashrc and .zshrc

## common alias
# Git alias
alias ..='cd ..'
alias gs='git status'
alias gb='git branch'
alias gl='git log --oneline'

# cat -> bat
alias cat='bat'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/nvm/init-nvm.sh

## bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## zsh
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt='%F{green}%n%f@%F{blue}%m%f %F{blue}%B%~%b%f $ '
#prompt redhat

typeset -U path PATH
path=(~/.local/bin $path)
export PATH
