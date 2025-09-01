{ pkgs, ... }:
with pkgs; [
  # terminal & editors
  vim
  git
  ghostty
  starship
  lazygit
  zellij  
  vscodium
  btop

  # browsers & internet
  brave

  # communication
  teams-for-linux
  signal-desktop
  protonmail-desktop

  # gaming
  discord
  protonup-qt

  # gnome extensions
  pkgs.gnome-tweaks
  gnomeExtensions.blur-my-shell
  gnomeExtensions.caffeine
  gnomeExtensions.appindicator

  # homelab & media
  makemkv
  handbrake
  vlc

  # security
  bitwarden
  protonvpn-gui

  # notes & productivity
  obsidian
]
