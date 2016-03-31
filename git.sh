#!/bin/bash
apt-get install -y git
git config --global user.name "rudenoise"
git config --global user.email rudenoise@gmail.com
ssh-keygen -t rsa -b 4096 -C "rudenoise@gmail.com"
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "an ssh key has been copied to your clipboard paste it into github"
