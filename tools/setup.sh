#!/bin/sh

mkdir $HOME/github && cd $HOME/github
git clone https://hub.fastgit.org/vritser/dotfiles.git

dotpath=$HOME/github/dotfiles
ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs/org" $HOME
ln -s $dotpath/.hammerspoon $HOME/
ln -s $dotpath/.zshrc $HOME/.zshrc
ln -s $dotpath/.zshenv $HOME/.zshenv
