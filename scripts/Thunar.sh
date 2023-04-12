#!/bin/bash

config_thunar() {
	# install packages
	sudo pacman -S --needed thunar thunar-volman

	# create directory structure
	if [ -d ~/.config/Thunar ]; then
		rm -rfv ~/.config/Thunar
	fi

	mkdir v ~/.config/Thunar

	# stow
	cd ~/dotfiles
	stow --verbose Thunar
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_thunar "$@"
fi
