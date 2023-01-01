#!/bin/bash

git clone http://benedicts-mini/gitea/benedict/i3lock-color.git i3lock-color-src
cd i3lock-color-src

./install-i3lock-color.sh

cd ..
rm -rf i3lock-color-src
