#!/usr/bin/zsh
rm ~/.config/hypr/overrides/overrides.lua
rm ~/.config/ghostty/config
rm ~/.config/fuzzel/fuzzel.ini

ln -s ~/.config/hypr/overrides/pc.lua ~/.config/hypr/overrides/overrides.lua
ln -s ~/.config/ghostty/pc_config ~/.config/ghostty/config
ln -s ~/.config/fuzzel/pc.ini ~/.config/fuzzel/fuzzel.ini
