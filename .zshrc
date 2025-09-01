#!/usr/bin/env bash

# source all the shell files in .config/zsh/
for conf in "$HOME/.config/zsh/"*.sh; do
  source "${conf}"
done
unset conf   
