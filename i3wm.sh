#!/bin/bash
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get -y install i3 feh xbacklight xautolock

cp ~/code/x250-ubuntu/desktop-bg-i3.sh ~/bin/
chmod +x ~/bin/desktop-bg-i3.sh

cp i3wm-lock.sh ~/bin/lock
sudo chmod +x ~/bin/lock

cp autolock.sh ~/bin/autolock
sudo chmod +x ~/bin/autolock

mkdir -p ~/bin
mkdir -p ~/.config/i3/

cp i3wm-lock.sh     ~/bin/lock
cp autolock.sh      ~/bin/autolock
cp mouse.sh         ~/bin/
cp desktop-bg-i3.sh ~/bin/
cp i3wm.config      ~/.config/i3/config
cp .i3status.conf   ~/
