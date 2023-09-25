#!bin/bash
current_dir=$(pwd)
mkdir -p "$HOME/.config"
ln -sf "$current_dir/tools/conf/albert.conf" "$HOME/.config/albert.conf"
