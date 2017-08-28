#!/usr/bin/env bash

cd ~

ln -s dotfiles/.bash_profile
ln -s dotfiles/.bashrc
ln -s dotfiles/.gemrc
ln -s dotfiles/.gitconfig
ln -s dotfiles/.vimrc

mkdir -p .vim/colors
ln -s ~/dotfiles/.vim/colors/*.vim .vim/colors

git clone https://github.com/k-takata/minpac.git .vim/pack/minpac/opt/minpac
