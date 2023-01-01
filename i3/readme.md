# i3 Window Manager Installation

## i3 Configuration

exec `install.sh` to apply all configurations.
The main i3 configuration file is `config` and will be copied to ~/.config/i3

related config files are 

- compton.conf

- rules.conf

- themes/theme.conf

## wallpaper

- wallpaper.sh 

  The script that will change the wallpaper randomly

- Wallpapers

  The wallpapers folder that the script will pick to display wallpaper

## ranger

The folder /ranger contains the config files

The `dependencies.sh` will also install the devicons plugin for ranger

The ranger is currently using `w3m` to preview images

## sxhkd

sxhkd is an enhancement for shortcut keys

## betterlockscreen

An enhanced lock screen tool that can use random wallpapers.

The installation script is `install-lockscreen.sh`

The dependency, i3lock-color will be compiled when executing `install-i3lock-color`

## rofi

The application launcher

there are 2 parts of themes, one will be pulled from [git repository](http://benedicts-mini/gitea/benedict/rofi-themes-collection)

Others are located under rofi/ folder

## polybar

The status bar

The polybar folder contains its themes and modules

`window_titles.yml` and `i3-window-title` are the plugin used by polybar to display dynamic title for focused window

## scripts

the folder contains different scripts can will be copied to `~/.local/bin/`



## Reference
[The Linux Cast i3 Repository](https://gitlab.com/thelinuxcast/my-dots)
