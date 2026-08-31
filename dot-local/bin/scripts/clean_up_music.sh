#!/usr/bin/bash

out_dir="$HOME/Downloads/test"
if [ ! -d "$out_dir" ]; then
    mkdir "$out_dir"
fi

ct=0
find "$HOME/Music/" -type f -name 'cover.jpg' -printf '%h\n' |
while read -r dir; do
    ct=$(("$ct"+1))
    [ "$(find "$dir" -maxdepth 1 -type f | wc -l)" -eq 1 ] && mv "$dir" "$out_dir/$ct"
done

find "$HOME/Music/" -type d -empty -print -delete

