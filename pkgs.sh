#!/bin/bash

if [[ -e "pkglist.txt" ]]; then
  echo "Installing packages from official repos...";
  sudo pacman -Syu --needed git base-devel - < pkglist.txt 
else
  echo "No package list available! (pkglist.txt missing)"
fi
