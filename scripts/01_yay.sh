#!/usr/bin/env bash

echo "🔄 Updating system packages..."
sudo pacman -Syu --noconfirm

echo "🚀 Starting base-devel and git installation with pacman..."
PACKAGES=(base-devel git)
for package in "${PACKAGES[@]}"; do
    if pacman -Q "$package" &>/dev/null; then
        echo "✔ $package is already installed. Skipping."
    else
        echo "⬇️ Installing $package..."
        sudo pacman -S "$package" --noconfirm
    fi
done

if command -v yay >/dev/null 2>&1; then
    echo "✔ yay is already installed."
else
    echo "📥 Cloning yay AUR helper repository..."
    if [ -d /tmp/yay ]; then
        echo "🧹 Cleaning up old /tmp/yay directory..."
        rm -rf /tmp/yay
    fi
    git clone https://aur.archlinux.org/yay.git /tmp/yay > /dev/null 2>&1

    echo "⚙️ Building and installing yay..."
    cd /tmp/yay
    makepkg -si --noconfirm > /dev/null 2>&1
fi

echo "🚀 Updating packages using yay..."
yay -Syu --noconfirm

echo "✅ System update and yay installation complete!"
