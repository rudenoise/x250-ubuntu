#!/bin/bash
set -e

sudo apt-get install -y python3-tk portaudio19-dev

sudo pip3 install pyaudio

cd ~/code/

git clone https://github.com/JonathanTaquet/Oe2sSLE.git

cd ~/
