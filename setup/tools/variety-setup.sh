#!/bin/bash
current_dir=$(pwd)
mkdir -p "$HOME/.config/variety"
rm -f "$HOME/.config/variety/variety.conf"
ln -sf "$current_dir/tools/conf/variety.conf" "$HOME/.config/variety/variety.conf"
