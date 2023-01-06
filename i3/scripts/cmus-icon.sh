#!/bin/bash

iconcolor=#1e1e2e

output=$(cmus-remote -C status)
cmusstatus=$(echo "$output"| grep "^status" | cut -c 8-)
case $cmusstatus in 
    "playing")
        icon=""
        ;;
    "paused")
        icon=""
        ;;
    "stopped")
        icon=""
        ;;
        #echo -n " - No Tile - | - No Artist -"
        #exit 0
esac

echo $icon

