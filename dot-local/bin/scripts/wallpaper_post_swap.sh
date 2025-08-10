#!/usr/bin/bash

set -a; source ~/.cache/wal/colors.sh; set +a

killall -SIGUSR2 waybar || waybar

hyprctl keyword general:col.active_border "rgba(${color1:1}ee)" "rgba(${color2:1}ee)" "45deg"
hyprctl keyword general:col.inactive_border "rgba(${color3:1}ff)"

wlogout=~/.config/wlogout/

if [[ ! -d "${wlogout}icons" ]]; then
    mkdir "${wlogout}icons"
fi

for filename in "$wlogout"/icons_raw/*
do
    base=$(basename "$filename")
    magick "${wlogout}icons_raw/${base}" -fill "${color1}" -colorize 100 "${wlogout}icons/${base}"
done

