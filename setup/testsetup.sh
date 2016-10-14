#!/bin/bash


_update="yaourt -Syua --noconfirm";
_query="yaourt -Q"

for x in $(cat ./basic.lst); 
	do 
		if [ -z `$_query $x` ] 2>/dev/null 1>&2; then
 		echo -e "\n\nPackage $x not installed, installing";
		fi
	done
