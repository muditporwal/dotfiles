#!/bin/bash

echo -e "\nUpdating System";
sleep 0.5;
pacaur -Syu;


_update="pacaur -S --needed --noedit --noconfirm";

for x in $(cat ./basic.lst) $(cat ./prog.lst) ; 
	do	
				$_update $x;
	done



if [ $SHELL != '/usr/bin/zsh' ]; then
echo -e "\n\nChange Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
fi
#Uncomment to perform Docker Setup for Docker Deamon
#sh docker.sh
echo -e "Set Default Java using -- archlinux-java status ; archlinux-java set <JAVA_ENV_NAME>"
