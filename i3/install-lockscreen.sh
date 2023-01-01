#!/bin/bash

echo "sherlocked" | sudo -S dnf install -y autoconf automake cairo-devel fontconfig gcc libev-devel libjpeg-turbo-devel libXinerama libxkbcommon-devel libxkbcommon-x11-devel libXrandr pam-devel pkgconf xcb-util-image-devel xcb-util-xrm-devel
echo "sherlocked" | sudo -S dnf install -y xset

wget https://github.com/betterlockscreen/betterlockscreen/archive/refs/heads/main.zip
unzip main.zip

chmod u+x betterlockscreen-main/betterlockscreen
echo "sherlocked" | sudo -S mv betterlockscreen-main/betterlockscreen /usr/local/bin/

echo ""

# pull source code & build & install i3lock-color
echo "sherlocked" | sudo -S ./install-i3lock-color.sh

cp betterlockscreenrc ~/.config/

echo "sherlocked" | sudo -S cp -rf lightdm/* /etc/lightdm/

echo "clean up"
rm -rf main.zip
rm -rf betterlockscreen-main/
# cp system/betterlockscreen@.service /usr/lib/systemd/system/
# systemctl enable betterlockscreen@$USER
