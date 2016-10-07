#!/bin/bash
echo "Installing Packages : Need Root Permission"
for x in $(cat ./basic.lst); do pacman -S --noconfirm $x; done
for x in $(cat ./prog.lst); do pacman -S --noconfirm $x; done

chsh -s /bin/zsh
