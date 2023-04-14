#!/bin/bash

config_i3() {
	# install packages
	sudo pacman -S --needed i3-wm picom feh
	yay -S betterlockscreen xidlehook

	# create directory structure
	if [ -d ~/.config/i3 ]; then
		rm -rfv ~/.config/i3
	fi

	mkdir -v ~/.config/i3

	# wallpaper
	if [ ! -d ~/Pictures ]; then
		mkdir ~/Pictures
	fi

	cp ~/dotfiles/Wallpaper/* ~/Pictures

	# stow
	cd ~/dotfiles
	stow --verbose i3
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_i3 "$@"
fi
