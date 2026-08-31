#!/usr/bin/bash

dir=$1
folder=$(ls "$1")

for file in $folder; do
    echo "f: ${file}"

    ffmpeg -i "${dir}/${file}" -vcodec copy -af "volume=10dB" "${dir}/louder-${file}"
    #ffmpeg -i "${dir}/${file}" -vn "${dir}/${file}.mp3"
    #   magick "${dir}/${file}" -resize x2160 "${dir}/${file}"
done
