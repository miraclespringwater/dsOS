#!/bin/bash

if [[ -e "aur-pkglist.txt" ]]; then
  echo "Installing packages from AUR (community repos)...";
  yay -S --needed --ignore python2,python - < aur-pkglist.txt 
else
  echo "No package list available! (aur-pkglist.txt missing)"
fi
