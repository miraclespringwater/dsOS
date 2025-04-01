#!/bin/bash

# Exit on error
set -e

# Update system and install essential packages
./pkgs.sh

# Install yay
./yay.sh

# Install aur packages
./aur-pkgs.sh

# Download necessary dotfiles and configs
./download.sh

# Copy dotfiles and configs
./copy.sh

# Enable services
./services.sh

# Final steps
./final.sh
