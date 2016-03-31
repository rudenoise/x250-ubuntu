#!/bin/bash
set -e

apt-get update
apt-get upgrade

. ff.sh
. git.sh
. vim.sh
. ocra.sh
. docker-env.sh
