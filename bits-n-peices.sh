#!/bin/bash

set -e

sudo apt-add-repository ppa:morgwai/tpbat
sudo apt-get update

sudo apt-get install -y pandoc
sudo apt-get install -y redshift
sudo apt-get install -y tlp tlp-rdw tpacpi-bat
