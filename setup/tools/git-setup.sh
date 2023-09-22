#!bin/bash

echo "Generating SSH key to github"
ssh-keygen -t rsa -b 4096 -C $email
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "SSH key copied to clipboard"
xclip -sel clip < ~/.ssh/id_rsa.pub

echo "On github click your profile photo, then click Settings."
echo "In the user settings sidebar, click SSH and GPG keys"
echo "Click New SSH key or Add SSH key"

echo "add ssh key to agent"
eval ssh-agent -s
ssh-add ~/.ssh/id_rsa 