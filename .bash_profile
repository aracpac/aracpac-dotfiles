#!/bin/bash

# https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html
# TL;DR:
#   /bin/bash -c: $BASH_ENV (without $PATH expansion)
#   /bin/bash -i: ~/.bashrc
#   /bin/bash -il: /etc/profile && ( ~/.bash_profile || ~/.bash_login, and ~/.profile ); ~/.bash_logout

# source ~/.bashrc
[[ $- == *i* ]] && source ~/.bashrc
