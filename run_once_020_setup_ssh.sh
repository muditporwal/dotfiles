#!/bin/bash

echo -e "Installing XClip for GitSSH";
sudo pacman -Sy --noconfirm xclip 1>/dev/null 2>&1;
echo -e "Completed installing XClip for GitSSH";

echo "Generating SSH key to github"
ssh-keygen -t rsa -b 4096 -C mudit.porwal@gmail.com
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "SSH key copied to clipboard"
xclip -sel clip < ~/.ssh/id_rsa.pub

echo "On github click your profile photo, then click Settings."
echo "In the user settings sidebar, click SSH and GPG keys"
echo "Click New SSH key or Add SSH key"
sleep 5