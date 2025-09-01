# System aliases
alias profile="$EDITOR ~/.config/zsh/"
alias reload="source ~/.zshrc"
alias rebuild="clear &&sudo nixos-rebuild switch"
alias update="cd /etc/nixos/ && sudo nix flake update"

# Navigation and project aliases
alias dev="cd ~/development/"
alias scripts="$EDITOR ~/.config/scripts/"

# Program aliases
alias code="$EDITOR"
alias nixos="$EDITOR /etc/nixos/"
alias nixsearch="xdg-open https://search.nixos.org/packages &"
alias lg="lazygit"
alias config="$EDITOR ~/.config"
