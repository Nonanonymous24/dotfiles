#!/bin/bash

config_polybar() {
	# install packages
	sudo pacman -S --needed polybar

	# create directory structure
	if [ -d "~/.config/polybar" ]; then
		rm -rfv ~/.config/polybar
	fi

	mkdir -v ~/.config/polybar

	# stow
	cd ~/dotfiles
	stow --verbose polybar
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_polybar "$@"
fi
