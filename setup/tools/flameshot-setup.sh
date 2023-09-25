#!/bin/bash

ln -sf "./tools/conf/flameshot" "$HOME/flameshot"

mkdir -p "$HOME/.config/flameshot"
ln -sf "./tools/conf/flameshot.ini" "$HOME/.config/flameshot/flameshot.ini"
