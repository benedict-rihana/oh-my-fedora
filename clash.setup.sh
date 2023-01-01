#!/bin/bash

cp -r clash $HOME/.config

cp clash.gz ~/.local/bin

cd ~/.local/bin

gzip -d clash.gz

chmod a+x clash
