#!/bin/bash

iconcolor=#1e1e2e

output=$(cmus-remote -C status)
artist=$(echo "$output" | grep "^tag artist " | cut -c 12-)
path=$(echo "$output" | grep "^file" | cut -c 12-)
max_length=40

if [[ $artist = *[!\ ]* ]]; then
    song=$(echo "$output" | grep "^tag title" | cut -c 11-)
    DISPLAY_LABEL="${song} - ${artist}"
    DISPLAY_LABEL=${DISPLAY_LABEL:0:$max_length}
    OUTPUT="%{F$iconcolor}${DISPLAY_LABEL}%{F-}"
    echo -n ${OUTPUT}
elif [[ $path = *[!\ ]* ]]; then
    IFS="/"
    read -ra parts <<< "$path"
    for i in "${parts[@]}"; do
        file=$i
    done
    DISPLAY_LABEL=${file:0:max_length}
    OUTPUT="%{F$iconcolor}$DISPLAY_LABEL%{F-}"
    echo -n ${OUTPUT}
else
        echo
fi
