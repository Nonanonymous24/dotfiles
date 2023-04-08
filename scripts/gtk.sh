#!/bin/bash

config_gtk() {
	# install packages
	yay -S catppuccin-gtk-theme-mocha papirus-folders-catppuccin-git

	# create directory structure
	if [ -d "~/.config/gtk-3.0" ]; then
		rm -rfv ~/.config/gtk-3.0
	fi

	mkdir -v ~/.config/gtk-3.0

	# stow
	cd ~/dotfiles
	stow --verbose gtk-3.0

	# papirus-folders theme
	papirus-folders --color cat-mocha-teal
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_gtk "$@"
fi
