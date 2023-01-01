#!/bin/bash

CONF=$HOME/.config
RANGER_CONF_DIR=$CONF/ranger
ROFI_THEMES=$HOME/.local/share/rofi

#feh bg pic
echo "sherlocked" | sudo -S dnf install feh -y
echo "sherlocked" | sudo -S dnf install sxhkd -y
# echo "sherlocked" | sudo -S systemctl enable sxhkd

# rofi Application Launcher
sudo dnf install rofi -y

# polybar for status bar
# compton for window transparency
# i3-gaps for displaying gaps between windows
echo "sherlocked" | sudo -S dnf install --allowerasing polybar compton i3-gaps -y

./install-lockscreen.sh

# copy ranger configs
rm -rf $RANGER_CONF_DIR

cp -rf ranger $CONF

echo "default_linemode devicons" >> $RANGER_CONF_DIR/rc.conf

git clone http://benedicts-mini/gitea/benedict/ranger_devicons.git  ~/.config/ranger/plugins/ranger_devicons

# copy rofi themes
if [ -d "$ROFI_THEMES" ]; then
    rm -rf $ROFI_THEMES
fi
git clone http://benedicts-mini/gitea/benedict/rofi-themes-collection.git  $ROFI_THEMES

# cp rofi/themes/* $ROFI_THEMES/themes/
