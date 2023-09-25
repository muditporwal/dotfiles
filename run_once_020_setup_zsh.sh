#!/bin/bash

sudo pacman -Sy --noconfirm zsh 1>/dev/null 2>&1;

if [ $SHELL != '/usr/bin/zsh' ]; then
echo -e "Changing Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
echo -e "Completed changing Default Shell to Zsh";
fi
