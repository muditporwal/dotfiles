#!/bin/bash

# Getting to the context directory
cd ~/.local/share/chezmoi/setup

echo "Finding Fastest Mirror for Singapore(Please update command if change in location)"
sudo pacman-mirrors --fasttrack
sudo reflector --country 'Singapore' --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy
echo "Completed Finding Fastest Mirror"

echo "Updating packages before install"
sudo pacman -Syyu 1>/dev/null 2>&1
echo "Completed updating packages before install"
