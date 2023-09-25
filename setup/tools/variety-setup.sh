#!/bin/bash

mkdir -p "$HOME/.config/variety"
rm -f "$HOME/.config/variety/variety.conf"
ln -sf "./tools/conf/variety.conf" "$HOME/.config/variety/variety.conf"
