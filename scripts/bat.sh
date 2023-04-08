#!/bin/bash

config_bat() {
	# install package
	sudo pacman -S --needed bat

	# create directory structure
	if [ -d "~/.config/bat" ]; then
		rm -rfv ~/.config/bat
	fi

	mkdir -pv ~/.config/bat/themes

	# stow
	cd ~/dotfiles
	stow --verbose bat

	# rebuild bat cache
	bat cache --build
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_bat "$@"
fi
