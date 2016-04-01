#!/bin/bash
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get -y install i3
sudo apt-get -y install feh
cp ~/code/x250-ubuntu/desktop-bg-i3.sh ~/bin/
chmod +x ~/bin/desktop-bg-i3.sh

echo "exec ~/bin/desktop-bg-i3.sh" >> ~/.i3/config

sudo apt-get install -y xbacklight

echo "bindsym XF86MonBrightnessUp exec xbacklight -inc 5" >> ~/.i3/config
echo "bindsym XF86MonBrightnessDown exec xbacklight -dec 5" >> ~/.i3/config

echo "bindsym XF86AudioRaiseVolume exec amixer -D pulse sset Master 5%+ #increase sound volume" >> ~/.i3/config
echo "bindsym XF86AudioLowerVolume exec amixer -D pulse sset Master 5%- #decrease sound volume" >> ~/.i3/config
echo "bindsym XF86AudioMute exec amixer -D pulse set Master 1+ toggle # mute sound" >> ~/.i3/config


