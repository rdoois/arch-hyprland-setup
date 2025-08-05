#!/bin/fish

# Copy source and alias content to config.fish

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
fisher install jethrokuan/z
