#!/bin/sh

cd $HOME && mkdir github && cd github
git clone https://hub.fastgit.org/vritser/dotfiles.git

ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs/org" $HOME
ln -s $HOME/github/dotfiles/.hammerspoon $HOME/
ln -s $HOME/github/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/github/dotfiles/.zshenv $HOME/.zshenv
