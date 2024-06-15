#!/bin/bash

echo "Patch nvim issue for codespaces"
cp -f statusline.lua /home/codespace/.local/share/nvim/lazy/mini.nvim/lua/mini/
cp init.lua ~/.config/nvim/
echo "Done!"
