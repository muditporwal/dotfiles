#!/bin/bash

mkdir -p "~/.config/variety"
rm -f "~/.config/variety/variety.conf"
ln -sf "./tools/conf/variety.conf" "~/.config/variety/variety.conf"
