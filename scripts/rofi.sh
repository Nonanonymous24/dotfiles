#!/bin/bash

config_rofi() {
	# install packages
	sudo pacman -S --needed rofi

	# create directory structure
	if [ -d "~/.config/rofi" ]; then
		rm -rfv ~/.config/rofi
	fi

	mkdir -pv ~/.config/rofi/themes

	# stow
	cd ~/dotfiles
	stow --verbose rofi
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_rofi "$@"
fi
