#!/bin/bash

git clone https://github.com/Antergos/web-greeter.git
cd web-greeter
echo "sherlocked" | sudo -S make install

cd ..
