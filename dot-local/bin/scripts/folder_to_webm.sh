#!/usr/bin/bash
set -ex

from="${1?missing from}"
location="${2?missing location}"

find "${location}" -name "*.${from}" -type f | while IFS=$'\n' read -r file
do
    echo "$file"
    newName="$(echo "$file" | cut -d'.' -f1 | sed 's/ /_/g').webm"
    echo "${newName}"
    ffmpeg -nostdin -i "${file}" -c:v libvpx-vp9 -crf 30 -b:v 0 -c:a libopus -vbr on -threads 10 "${newName}"
done
