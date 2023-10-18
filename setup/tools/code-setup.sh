#!/bin/bash
current_dir=$(pwd)
mkdir -p "$HOME/.config/Code - OSS"
ln -sf "$current_dir/tools/conf/code-settings.json" "$HOME/.config/Code - OSS/settings.json"