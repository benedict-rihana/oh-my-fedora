#!/bin/bash

git pull

if [[ ! -z $1 ]]; then
  echo "enable theme $1"
  cd polybar
  ./set-theme.sh $1
  cd ..
  cp -f themes/$1.conf ~/.config/i3/theme.conf
else
  echo "copy default theme catppuccin-mocha"
  cd polybar
  ./set-theme.sh catppuccin-mocha
  cd ..
  cp -f themes/catppuccin-mocha.conf ~/.config/i3/theme.conf
fi

CONF=$HOME/.config

cp -f config $CONF/i3/
cp -f autostart.sh $CONF/i3/
cp -f rules.conf $CONF/i3/
cp -f compton.conf $CONF/i3/
cp -f Xresources ~/.Xresources

cp -rf scripts/* ~/.local/bin/

ROFI_CONF_DIR="$HOME/.config/rofi/"
if [ ! -d "$ROFI_CONF_DIR" ]; then
  echo "rofi configuration folder not exist, create"
  mkdir $ROFI_CONF_DIR
fi
cp -f rofi/config.rasi ~/.config/rofi/config.rasi
cp -f rofi/rofi-power-menu/rofi-power-menu $HOME/.local/bin/

SCRIPT_DIR=$CONF/scripts
RANGER_CONF_DIR=$CONF/ranger
ROFI_THEMES=$HOME/.local/share/rofi/themes/

cp -r rofi/themes/* $ROFI_THEMES/

if [ ! -d "$SCRIPT_DIR" ]; then
  mkdir $SCRIPT_DIR
fi

# echo "default_linemode devicons" >> $RANGER_CONF_DIR/rc.conf

cp -f wallpaper.sh $SCRIPT_DIR

# cp -rf Wallpapers $HOME/Pictures/
./copy-wallpapers.sh

# cp -f themes/snowfall.conf ~/.config/i3/theme.conf
cp -f autostart.sh ~/.config/i3/autostart.sh
if [ -d "$CONF/themes" ]; then
    rm -rf $CONF/i3/themes   
fi
cp -rf themes $CONF/i3/

if [ -d "$CONF/picom" ]; then
    rm -rf $CONF/picom
fi
#cp -r picom $CONF/

if [ -d "$CONF/polybar"  ]; then
    rm -rf $CONF/polybar
fi

cp -r polybar $CONF
ln -s $CONF/polybar $CONF/i3/polybar

cp -r sxhkd $CONF/
# if [ -d "$CONF/rofi" ]; then
#    rm -rf $CONF/rofi
# fi
# cp -r rofi $CONF/

echo "sherlocked" | sudo -S cp i3-window-title /usr/local/bin/
# echo "sherlocked" | sudo -S cp i3lock-color /usr/local/bin/
cp window_titles.yml $CONF/

rm ~/.config/polybar/polybar
