#!/bin/bash

yay -R $(yay -Qtdq)

if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    ssh-keygen -o -a 100 -t ed25519 -f $HOME/.ssh/id_ed25519 -C "rdoois@jarvis"
fi

chsh -s $(which fish)

mkdir -p $HOME/bin
fish_add_path $HOME/bin
sudo ln -s $(which nvim) $HOME/bin/vi
sudo ln -s $(which nvim) $HOME/bin/vim

git config --global core.editor "nvim"
git config --global init.defaultBranch main
git config --global user.name "Renato Oliveira"
git config --global user.email "renato.dev.oliveira@gmail.com"

cp -r dotfiles/* $HOME/.config
