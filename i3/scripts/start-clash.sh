#!/bin/bash

cp ~/.enable-proxy ~/.proxyrc
source ~/.bashrc
source /etc/profile
clash &
