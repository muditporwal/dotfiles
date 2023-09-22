#!/bin/bash

ln -s "./tools/conf/flameshot" ~/flameshot

mkdir -p "~/.config/flameshot"
ln -s "./tools/conf/flameshot.ini" ~/.config/flameshot/flameshot.ini
