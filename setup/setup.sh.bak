#!/bin/bash

echo -e "\nUpdating System - PAC Repositories";
sleep 0.5;
sudo pacman -Syu;

echo -e "\nUpdating System - AUR Repositories";
sleep 0.5;
yaourt -Syu --aur;


_update="yaourt -Syua --noconfirm";
_query="yaourt -Q"

for x in $(cat ./basic.lst) $(cat ./prog.lst) ; 
	do	
		if [ -z `$_query $x` ] 2>/dev/null 1>&2; then
	 		echo -e "\n\nPackage $x not installed, installing";
		        existingPackage=`$_query | grep $x`;	
			if [ -n $existingPackage ] 2>/dev/null 1>&2; then
				sleep 0.5; 		
				$_update $x;
			else
				echo -e "\n\nSimilar Package Installed ::: $existingPackage";
			fi
#  		#exit $?;
		fi
	done



if [ $SHELL != '/usr/bin/zsh' ]; then
echo -e "\n\nChange Default Shell to Zsh";
sleep 0.5; 
chsh -s /usr/bin/zsh;
fi
echo -e "Set Default Java using -- archlinux-java status ; archlinux-java set <JAVA_ENV_NAME>"
