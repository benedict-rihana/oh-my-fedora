#!/bin/bash

cd ~/.config

git clone http://benedicts-mini/gitea/benedict/nvim.git nvim

cd nvim/fedora

chmod a+x init.sh
./init.sh
