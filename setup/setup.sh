#!/bin/bash

echo "\nUpdating System - PAC Repositories";
sleep 0.5;
sudo pacman -Syu;

echo "\nUpdating System - AUR Repositories";
sleep 0.5;
yaourt -Syu --aur;


_update="yaourt -Syua --noconfirm";
_query="yaourt -Q"

for x in $(cat ./basic.lst); 
	do 
		if ! `$_query $x` 2>/dev/null 1>&2; then
 		echo "\n\nPackage $x not installed, installing";
		sleep 0.5; 		
		$_update $x
   		#exit $?;
		fi
	done
for x in $(cat ./prog.lst); 
	do 
		if ! `$_query $x` 2>/dev/null 1>&2; then
 		echo "\n\nPackage $x not installed, installing";
		sleep 0.5; 		
		$_update $x
   		#exit $?;
		fi
	done
echo "\n\nChange Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
echo "Set Default Java using -- archlinux-java status ; archlinux-java set <JAVA_ENV_NAME>"