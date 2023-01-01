#!/bin/bash

echo "sherlocked" | sudo -S dnf install alsa-utils alsa-lib-devel openssl openssl-devel -y

git clone "http://benedicts-mini/gitea/benedict/netease-music-tui.git"

cd netease-music-tui

make

echo "sherlocked" | sudo -S make install


cd ..
