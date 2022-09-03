#!/bin/bash

# cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# prevent from accidentally overwriting files
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -iv'

# colorize things
alias ls='ls --color=auto -a'
alias lsd='ls --color=always -al | grep "^d"'
alias ll='ls -ahl'
alias grep='grep --colour=auto'
