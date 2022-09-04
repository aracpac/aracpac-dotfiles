#!/bin/bash

# source all .dot files
for file in ~/.{bash_exports,bash_functions,bash_aliases,bash_prompt,bash_local}; do
  if [[ -f "$file" ]]; then
      [[ -r "$file" ]] && source "$file"
  fi
done
unset file

# export LS_COLORS AFTER we've sourced everything else and have an updated $PATH
LS_COLORS="$(vivid generate ayu)"
export LS_COLORS

# ensure the userspace programs we expect are installed
check_for_userspace_commands

# source bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

# allow local connections to X as root
if xset q &>/dev/null; then
  xhost local:root > /dev/null 2>&1
fi

# configure some bash options
# see https://www.gnu.org/software/bash/manual/bash.html
shopt -s cdspell
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend
shopt -s nocaseglob
