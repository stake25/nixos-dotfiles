#!/usr/bin/env bash

cp -f $HOME/.config/.zshrc $HOME/.zshrc

# Script: move-nixos-config.sh
# Moves /etc/nixos to ~/.config/nixos and creates a symlink, if safe to do so.

CONFIG_DIR="$HOME/.config/nixos"

# Check if script is run with sudo (needed for moving and linking)
if [ "$EUID" -eq 0 ]; then
  echo "Do not run this script as root."
  exit 1
fi

# Check if /etc/nixos is a symlink
if [ -L /etc/nixos ]; then
  echo "/etc/nixos is already a symbolic link. Refreshing the link."
  sudo rm /etc/nixos && sudo ln -s "$CONFIG_DIR" /etc/nixos
  exit 0
fi

# Check if /etc/nixos is a directory
if [ ! -d /etc/nixos ]; then
  echo "/etc/nixos is not a directory. Does it exist?"
  exit 1
fi

# backup the nixos config before starting
backup.sh /etc/nixos/

# Create ~/.config if it doesn't exist
mkdir -p "$HOME/.config"

# Move /etc/nixos to ~/.config/nixos
echo "Moving /etc/nixos to $CONFIG_DIR..."
sudo mv /etc/nixos "$CONFIG_DIR"

# Create symbolic link back to /etc/nixos
echo "Creating symbolic link from /etc/nixos to $CONFIG_DIR..."
sudo ln -s "$CONFIG_DIR" /etc/nixos

echo "Success! Your NixOS configuration is now at $CONFIG_DIR"
echo "and /etc/nixos is a symbolic link pointing to it."
