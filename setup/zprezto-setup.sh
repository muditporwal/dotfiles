#!/bin/zsh
echo -e "\n\nSetting up ZPrezto";
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo -e "Completed setting up ZPrezto. Try using a new terminal";
