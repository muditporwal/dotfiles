#!/bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi


echo "Ranking server list for optimal performance"
pacman-mirrors --fasttrack
echo "Completed ranking server list for optimal performance"
echo "-----------------------------------------------------------------------------"
echo "Updating packages before install"
pacman -Syyu
echo "Completed updating packages before install"
echo "-----------------------------------------------------------------------------"
_update="pacaur -S --needed --noedit --noconfirm";

echo "Installating the tools in the basic and programming list files"
for x in $(cat ./basic.lst) $(cat ./prog.lst) ; 
	do	
				$_update $x;
				[[ -f ./tools/$x-setup.sh ]] && sh ./tools/$x-setup.sh
	done

echo "Completed installating the tools in the basic and programming list files"
echo "-----------------------------------------------------------------------------"
sleep 1

# Setup Bare Git Repo with alias for dotfiles
sh ./tools/dotfiles-setup.sh

# Downloads Zprezto and uses the .zprezto config present in the repo
sh ./tools/zprezto-setup.sh