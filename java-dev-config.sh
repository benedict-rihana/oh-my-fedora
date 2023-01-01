#!/bin/bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk version

if(($? != 0)); then
    exit;
fi

sdk install java 17.0.5-ms

sdk install gradle

sdk install kotlin

sdk install maven

cp -rf applications/* ~/.local/share/applications/
