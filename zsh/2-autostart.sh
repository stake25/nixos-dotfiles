# Start Starship
eval "$(starship init zsh)"

if [[ -z "$ZELLIJ" ]]; then
  eval "$(zellij setup --generate-auto-start zsh)"
  exit
fi
