#!/bin/bash

packages=(
	asdf-vm bashtop bat curl discord docker docker-buildx docker-compose eza fish fzf google-chrome
    kitty lazygit less neofetch neovim noto-fonts-emoji pavucontrol ripgrep starship
    the_silver_searcher timeshift tldr tmux ttf-firacode-nerd unzip wget wl-clipboard xorg-xrandr
    yq zip
)

# Update package database
yay -Syq --noconfirm

# Install packages
for pkg in "${packages[@]}"; do
    yay -Sq --noconfirm --needed "$pkg"
done

