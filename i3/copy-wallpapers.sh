#!/bin/bash


cp -rf Wallpapers $HOME/Pictures/
cp -rf Lockscreen $HOME/Pictures/

echo "sherlocked" | sudo -S cp -rf Lockscreen/default.jpg /usr/share/backgrounds/
