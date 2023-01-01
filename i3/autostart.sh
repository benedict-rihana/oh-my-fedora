#!/usr/bin/env bash

# compositor
# killall picom
# while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
# picom --config ~/.config/picom/picom.conf --vsync &

~/.config/polybar/launch.sh &

sxhkd &

LOCKSCREEN="$HOME/Pictures/Lockscreen"

if [ -f "/usr/local/bin/betterlockscreen" ]; then
  update-lock-screen.sh  
fi
