#!/bin/bash

config_dunst() {
	# install package
	sudo pacman -S --needed dunst

	# create directory structure
	if [ -d "~/.config/dunst" ]; then
		rm -rfv ~/.config/dunst
	fi

	mkdir -v ~/.config/dunst

	# stow
	cd ~/dotfiles
	stow --verbose dunst
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_dunst "$@"
fi
