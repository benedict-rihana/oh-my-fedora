#!/bin/bash

if [[ -n $1 ]]; then
  if [[ $1 == "-prev" ]]; then
    echo "ﭢ"
  elif [[ $1 == "-next" ]]; then
    echo "ﭠ"
  fi
fi  
