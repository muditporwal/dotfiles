#!bin/bash
if [ $SHELL != '/usr/bin/zsh' ]; then
echo -e "\n\nChange Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
fi
