#!/bin/bash


if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm
    cd - && rm -rf /tmp/yay
    echo "yay installed. (yay!)"
else
  echo "yay is already installed."
fi
