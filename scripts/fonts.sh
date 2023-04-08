#!/bin/bash

install_fonts() {
	sudo pacman -S --needed ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-font-awesome
	yay -S --needed ttf-unifont siji-git ttf-fork-awesome
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	install_fonts "$@"
fi
