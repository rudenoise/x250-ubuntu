#!/bin/bash
set -e

apt-get install vim

apt-get install software-properties-common
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install neovim
apt-get install python-dev python-pip python3-dev python3-pip
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --config vim
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
update-alternatives --config editor

cd ~/code
git clone ssh://git@github.com/rudenoise/vimrc.git
cd vimrc
cp .vimrc ~/.vimrc
cd ~/code/x250-ubuntu

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

mkdir ~/.vim/autoload;
mkdir ~/.vim/plugin;

wget https://raw2.github.com/kien/rainbow_parentheses.vim/master/autoload/rainbow_parentheses.vim -P $HOME/.vim/autoload/;
wget https://raw2.github.com/kien/rainbow_parentheses.vim/master/plugin/rainbow_parentheses.vim -P $HOME/.vim/plugin/;

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
