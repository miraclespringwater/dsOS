#!/bin/bash

echo "Downloading awesomeWM and NeoVim configs..."

# Download awesome wm
git clone https://github.com/miraclespringwater/awesomewm-config.git

# Download neovim config 
git clone https://github.com/miraclespringwater/neovim-config

# Download dotfiles
echo "Downloading rest of dotfiles..."
git clone --bare https://github.com/miraclespringwater/dotfiles $HOME/dotfiles

# Download nerdfont...
echo "Donwloading fonts..."
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip | unzip -d ~/.local/share/fonts/ -


