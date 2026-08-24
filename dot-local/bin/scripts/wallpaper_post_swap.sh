#!/usr/bin/bash

set -a; source "$HOME/.cache/wal/colors.sh"; set +a

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

MAKOCTL="/usr/bin/makoctl"
MAKOCONFIG="$HOME/.config/mako/config"

cat << EOF > $MAKOCONFIG
# GLOBAL
max-history=5
sort=-time

# BINDING OPTIONS
on-button-left=dismiss
on-button-middle=dismiss
on-button-right=dismiss-all
on-touch=dismiss
on-notify=exec mpv /usr/share/sounds/freedesktop/stereo/message.oga --volume=30

# STYLE OPTIONS
font="Mononoki Nerd Font", 8
format=<b>%a ⏵</b> %s\n%b
width=200
height=80
margin=3
padding=10
border-size=1
border-radius=5
icons=1
max-icon-size=48
icon-location=left
markup=1
actions=1
history=1
text-alignment=center
default-timeout=5000
ignore-timeout=0
max-visible=5
layer=overlay
anchor=top-right

background-color=${color1}
text-color=${color2}

[urgency=low]
border-color=${color2}
background-color=${color4}
text-color=${color6}

[urgency=normal]
border-color=${color1}
background-color=${color3}
text-color=${color5}
default-timeout=10000
ignore-timeout=1

[urgency=high]
font="Mononoki Nerd Font", 14
border-color=${color1}
background-color=${color2}
text-color=${color6}
default-timeout=0
ignore-timeout=1
EOF
$MAKOCTL  reload
