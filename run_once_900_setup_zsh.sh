#!/bin/bash
echo -e "Installing Zsh";
sudo pacman -Sy --noconfirm zsh 1>/dev/null 2>&1;
echo -e "Completed installing Zsh";
if [ $SHELL != '/usr/bin/zsh' ]; then
echo -e "Changing Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
echo -e "Completed changing Default Shell to Zsh";
fi
