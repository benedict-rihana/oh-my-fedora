#!/bin/bash

cp -r clash $HOME/.config

cp -f enable-proxy ~/.enable-proxy

cp -f disable-proxy ~/.disable-proxy

cp -f start-clash.sh ~/.local/bin/
cp -f stop-clash.sh ~/.local/bin/

cp clash.gz ~/.local/bin

cd ~/.local/bin

gzip -d clash.gz

chmod a+x clash
