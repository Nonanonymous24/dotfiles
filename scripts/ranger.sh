#!/bin/bash

config_ranger() {
	# install packages
	sudo pacman -S --needed ranger

	# create directory structure
	if [ -d "~/.config/ranger" ]; then
		rm -rfv ~/.config/ranger
	fi

	mkdir -pv ~/.config/ranger/plugins/__pycache__
	mkdir -pv ~/.config/ranger/plugins/devicons2/__pycache__

	# stow
	cd ~/dotfiles
	stow --verbose ranger
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_ranger "$@"
fi
