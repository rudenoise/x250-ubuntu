#!/bin/bash

set -e

sudo apt-add-repository ppa:morgwai/tpbat
sudo apt-get update

sudo apt-get install -y pandoc
sudo apt-get install -y redshift
sudo apt-get install -y tlp tlp-rdw tpacpi-bat
sudo apt-get install -y texlive texlive-latex-extra

gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

cp day ~/bin/
cp night ~/bin/
