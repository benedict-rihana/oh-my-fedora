#!/bin/bash

cp ~/.enable-proxy ~/.proxyrc
source ~/.bashrc
source ~/.zshrc
clash &
