#!/bin/bash

echo "sherlocked" | sudo -S cp -r fonts/* /usr/share/fonts
sudo fc-cache -v /usr/share/fonts
