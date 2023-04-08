#!/bin/bash

config_xfce4() {
	# create directory structure
	if [ -d "~/.config/xfce4" ]; then
		rm -rfv ~/.config/xfce4
	fi

	mkdir -pv ~/.config/xfce4/xfconf/xfce-perchannel-xml

	# stow
	cd ~/dotfiles
	stow --verbose xfce4
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_xfce4 "$@"
fi
