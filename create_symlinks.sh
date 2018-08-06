#!/bin/bash

dotfiles=(vimrc gvimrc)
source=$1

if [ -z $source ]; then
  source="$(pwd)"
fi

echo Creating symlink for .vim to $source

rm -rf ~/.vim || true
ln -s "${source}" ~/.vim


echo Using dotfiles in directory: $source

cd ~
for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "${dotfile}"
  ln -s "~/.vim/${dotfile}" ".${dotfile}"
done
