#!/bin/bash

# Creates directories used for vim backup
directory=("autoload" "backup" "swp" "undodir" )
for element in "${directory[@]}"
do
    if [ ! -d "$element" ]; then
        mkdir $element
    fi
done

# Get pathogen.vim
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Initiate the git submodules
git submodule init
git submodule update

# Create symbolic link to vims package manager
#ln -s ~/.vim/bundle/vim-pathogen/autoload ~/.vim/

# Create symbolic link to vim
ln -s ~/.vim/vimrc ~/.vimrc
