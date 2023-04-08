#!/bin/bash

config_nvim() {
	# install packages
	sudo pacman -S lazygit ripgrep fd cmake cargo xclip python-pynvim ruby git curl
	yay -S --needed neovim-nightly powershell

	which node
	if [ $? -ne 0 ]; then
		if [ ! -d "~/.nvm" ]; then
			curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
			source ~/.bashrc
		fi
		nvm install 19.8.1
	fi

	which npm
	if [ $? -ne 0 ]; then
		sudo pacman -S --needed npm
	fi

	# create directory structure
	if [ -d ~/.config/nvim ]; then
		rm -rfv ~/.config/nvim
	fi

	rm -rfv ~/.local/share/nvim
	rm -rfv ~/.local/state/nvim
	rm -rfv ~/.cache/nvim

	mkdir -pv ~/.config/nvim/lua/config
	mkdir -v ~/.config/nvim/lua/plugins

	# stow
	cd ~/dotfiles
	stow --verbose nvim
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_nvim "$@"
fi
