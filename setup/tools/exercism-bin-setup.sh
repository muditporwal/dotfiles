#!bin/bash

current_dir=$(pwd)
mkdir -p "$HOME/exercism"
ln -sf "$current_dir/tools/conf/exercism.sh" "$HOME/exercism/exercism.sh"
