#!/bin/bash

# Backup existing dotfiles
echo "Backing up existing home directory dotfiles to '~/dotfiles-backup'..."
mkdir ~/dotfiles-backup
cp -r ~/.* ~/dotfiles-backup/

# Copy contents of dotfiles repository
echo "Checking out dotfiles repo..."
# Set up the temporary 'config' alias for managing dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
# Checkout the files from the bare repository into the home directory
config checkout
echo "Dotfiles populated in home directory and .config!"

# Copy awesome wm and neovim configs
echo "Copying awesomewm and neovim configs!"
cp -v awesomewm-config ~/.config/awesome
cp -v nvim ~/.config/nvim
echo "Copied to ~/.config/awesome and ~/.config/nvim"
