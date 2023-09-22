#!/bin/zsh
echo -e "\n\nSetting up ZPrezto";
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo -e "Completed setting up ZPrezto. Try using a new terminal";

if [ $SHELL != '/usr/bin/zsh' ]; then
echo -e "\n\nChanging Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
echo -e "Completed changing Default Shell to Zsh";
fi
