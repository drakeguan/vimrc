#!/bin/bash

ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.vim ~/.vim

git submodule init
git submodule update
