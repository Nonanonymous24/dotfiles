#!/bin/bash

trap "exit" INT
set -e

# source scripts
for file in source ~/dotfiles/scripts/*; do
	source $file
done

install_fonts
config_i3
config_kitty
config_polybar
config_rofi
config_bat
config_btop
config_dunst
config_gtk
config_ranger
config_thunar
config_xfce4
config_nvim
config_zsh
