#!/bin/bash
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get -y install i3
sudo apt-get -y install feh
cp ~/code/x250-ubuntu/desktop-bg-i3.sh ~/bin/
chmod +x ~/bin/desktop-bg-i3.sh


sudo apt-get install -y xbacklight

sudo apt-get install -y xautolock

cp i3wm-lock.sh ~/bin/lock
sudo chmod +x ~/bin/lock

cp i3wm-autolock.sh ~/bin/autolock
echo "exec ~/bin/autolock" >> ~/.config/i3/config

cp ~/code/x250-ubuntu/i3wm.config ~/.config/i3/config
