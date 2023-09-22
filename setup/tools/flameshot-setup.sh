#!/bin/bash

ln -sf "./tools/conf/flameshot" "~/flameshot"

mkdir -p "~/.config/flameshot"
ln -sf "./tools/conf/flameshot.ini" "~/.config/flameshot/flameshot.ini"
