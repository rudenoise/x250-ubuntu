#!/bin/bash
set -e

sudo apt-get install opam
opam init
eval `opam config env`
opam switch 4.02.3
eval $(opam config env)
opam depext conf-m4.1
# some core libs
opam install batteries core
# a repl
opam install utop
# a build tool
opam install oasis
touch ~/.ocamlinit
echo '#use "topfind";;' >> ~/.ocamlinit
echo '#thread;;'
echo '#camlp4o;;'
echo '#require "core.top";;'
echo '#require "core.syntax";;'

opam install ocp-indent merlin

cd ~/code

git clone https://github.com/def-lkb/ocp-indent-vim.git

ln -s ~/code/ocp-indent-vim ~/.vim/bundle/ocp-indent-vim

cd ~/
