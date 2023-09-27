#!/bin/bash

# Getting to the context directory
cd ~/.local/share/chezmoi/setup


# echo "-----------------------------------------------------------------------------"
echo "Updating packages before install"
sudo pacman -Syyu 1>/dev/null 2>&1
echo "Completed updating packages before install"
echo "-----------------------------------------------------------------------------"