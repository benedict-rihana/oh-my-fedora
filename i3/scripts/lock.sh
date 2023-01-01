#!/bin/bash

#!/bin/sh
if [ -f "/usr/local/bin/betterlockscreen" ]; then
  betterlockscreen -l
  exit 0
fi

i3lock -i ~/Pictures/Lockscreen/default.jpg
