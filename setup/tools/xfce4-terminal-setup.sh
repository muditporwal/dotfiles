#!/bin/bash
current_dir=$(pwd)
mkdir -p "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
ln -sf "$current_dir/tools/conf/xfce4-terminal.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-terminal.xml"