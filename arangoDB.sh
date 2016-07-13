#!/bin/bash

set -e

# https://www.arangodb.com/download/ubuntu/

sudo -u root -H sh -c 'wget https://www.arangodb.com/repositories/arangodb3/xUbuntu_16.04/Release.key'
sudo -u root -H sh -c 'apt-key add - < Release.key'
sudo -u root -H sh -c 'rm Release.key*'
sudo -u root -H sh -c "echo 'deb https://www.arangodb.com/repositories/arangodb3/xUbuntu_16.04/ /' | tee /etc/apt/sources.list.d/arangodb.list"

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install arangodb3=3.0.2
