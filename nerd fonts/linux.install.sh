#!/bin/bash

echo "sherlocked" | sudo -S cp -r sauce-code-pro-nf /usr/share/fonts
sudo fc-cache -v /usr/share/fonts
