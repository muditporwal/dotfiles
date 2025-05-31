#!/bin/bash
current_dir=$(pwd)
mkdir -p "$HOME/.config/VSCodium"
ln -sf "$current_dir/tools/conf/code-settings.json" "$HOME/.config/VSCodium/User/settings.json"
