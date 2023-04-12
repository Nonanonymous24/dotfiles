#!/bin/bash

config_kitty() {
	# install packages
	sudo pacman -S --needed kitty

	# create directory structure
	if [ -d ~/.config/kitty ]; then
		rm -rfv ~/.config/kitty
	fi

	mkdir -pv ~/.config/kitty/themes

	# stow
	cd ~/dotfiles
	stow --verbose kitty
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_kitty "$@"
fi
