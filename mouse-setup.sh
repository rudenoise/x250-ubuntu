#!/bin/bash

mkdir -p ~/bin
cp mouse.sh ~/bin/
chmod +x ~/bin/mouse.sh
cp mouse.desktop ~/.config/autostart/

echo "exec ~/bin/mouse.sh" >> ~/.i3/config
