#!/bin/bash

config_btop() {
	# install package
	sudo pacman -S --needed btop

	# create directory structure
	if [ -d ~/.config/btop ]; then
		rm -rfv ~/.config/btop
	fi

	mkdir -pv ~/.config/btop/themes

	# stow
	cd ~/dotfiles
	stow --verbose btop
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_btop "$@"
fi
