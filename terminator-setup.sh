#!/bin/bash

#
# Terminator with zsh Configuration by Khem Puthea
#
# It can be executed several times e.g. to update the files
#

echo "Author Mr Khem Puthea"
echo "Software Developer"

# Installation termintor 

sudo apt-get install -y terminator

# Installation zsh 

sudo apt-get install -y zsh 


# clone oh-my-zsh from putheakhem repository 
echo "cloning into $HOME "

git clone git@github.com:putheakhem/oh-my-zsh.git ~/.oh-my-zsh

# clone poweline font 
echo "cloning powerline font into $HOME" 

git clone git@github.com:putheakhem/fonts.git ~/.fonts

# Font Installation:

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

# move font

echo "Patchfont to be use as global"

sudo mv  ~/.fonts /usr/share/fonts


