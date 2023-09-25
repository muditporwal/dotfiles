#!/bin/bash
current_dir=$(pwd)
ln -sf "$current_dir/tools/conf/flameshot" "$HOME/flameshot"
mkdir -p "$HOME/.config/flameshot"
ln -sf "$current_dir/tools/conf/flameshot.ini" "$HOME/.config/flameshot/flameshot.ini"
