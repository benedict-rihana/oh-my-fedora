#!/bin/bash

iconcolor=#f5cee7

output=$(cmus-remote -C status)
artist=$(echo "$output" | grep "^tag artist" | cut -c 12-)
path=$(echo "$output" | grep "^file" | cut -c 12-)
cmusstatus=$(echo "$output"| grep "^status" | cut -c 8-)
case $cmusstatus in 
    "playing")
        icon=" "
        ;;
    "paused")
        icon=" "
        ;;
    "stopped")
        echo
        exit 0
esac

if [[ $artist = *[!\ ]* ]]; then
    song=$(echo "$output" | grep "^tag title" | cut -c 11-)
    DISPLAY_LABEL="${song} - ${artist}"
    DISPLAY_LABEL=${DISPLAY_LABEL:0:60}
    OUTPUT="%{F$iconcolor}$icon%{F-} %{F$iconcolor}${DISPLAY_LABEL}%{F-}"
    echo -n ${OUTPUT}
elif [[ $path = *[!\ ]* ]]; then
    IFS="/"
    read -ra parts <<< "$path"
    for i in "${parts[@]}"; do
        file=$i
    done
    DISPLAY_LABEL=${file:0:60}
    OUTPUT="%{F$iconcolor}$icon%{F-} %{F$iconcolor}$DISPLAY_LABEL%{F-}"
    echo -n ${OUTPUT}
else
        echo
fi
