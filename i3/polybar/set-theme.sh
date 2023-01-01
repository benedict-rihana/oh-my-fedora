#!/bin/bash

if [ -z "$1" ]; then
  echo "theme name must be specified"
  exit -1
fi

theme=$1
echo "set theme to $theme"

theme_config="themes/configs/${theme}"
theme_module="themes/modules/${theme}.ini"
theme_color="themes/colors/${theme}.ini"
if [[ ! -f "${theme_config}" ]]; then
  echo "theme ${theme_config} not found! exit"
  exit -1
fi

module="themes/modules/modules.ini"
color="themes/theme.ini"

cp -f ${theme_config} ./config.ini

cp -f ${theme_module} ${module}
cp -f ${theme_color} ${color}
