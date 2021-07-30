#!/bin/bash


# WARNING: backup every old file
rm ~/.bashrc
ln -s $(pwd)/bash/.bashrc ~/.bashrc
ln -s $(pwd)/bash/.aliases ~/.aliases
ln -s $(pwd)/bash/.functions ~/.functions
ln -s $(pwd)/bash/.exports ~/.exports

ln -s $(pwd)/vim ~/.vim
ln -s $(pwd)/vim/vimrc ~/.vimrc
