# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/stake/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom Variables
EDITOR="codium"

# add scripts to the path
export PATH="$HOME/.config/scripts:$PATH"
