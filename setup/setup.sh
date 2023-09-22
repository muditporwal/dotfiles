#!/bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi


echo "Ranking server list for optimal performance"
pacman-mirrors --fasttrack

echo "Updating packages before install"
pacman -Syyu

_update="pacaur -S --needed --noedit --noconfirm";

for x in $(cat ./basic.lst) $(cat ./prog.lst) ; 
	do	
				$_update $x;
				[[ -f ./tools/$x-setup.sh ]] && sh ./tools/$x-setup.sh
	done

sh ./tools/zprezto-setup.sh