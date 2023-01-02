#!/bin/bash

## The script to install useful applications such as chat apps/ email client etc.


TEMP="$HOME/.app_temp/"

mkdir $TEMP

cp -r application-scripts/* $TEMP 

cp -r cmus ~/.config/

cd $TEMP

# netease-music-tui is not working due to login issues.
# ./netease-music-tui.sh
./vscode.sh
./web-greeter.sh
./cmus.sh
./bbdown-install.sh
./install-fedora-software.sh
./vlc-install.sh
./screenshot-tool.sh

rm -rf $TEMP

echo "sherlocked" | sudo -S rm -rf $TEMP

