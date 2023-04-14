#!/bin/bash

config_nvim() {
	# install packages
	sudo pacman -S --needed lazygit ripgrep fd cmake cargo xclip python-pynvim ruby git curl
	yay -S --needed neovim-nightly

	# install node and npm using nvm
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

	source ~/.nvm/nvm.sh
	source ~/.bashrc

	nvm install node
	nvm install-latest-npm

	# create directory structure
	if [ -d ~/.config/nvim ]; then
		rm -rfv ~/.config/nvim
	fi

	if [ -d ~/.local/share/nvim ]; then
		rm -rfv ~/.local/share/nvim
	fi

	if [ -d ~/.local/state/nvim ]; then
		rm -rfv ~/.local/state/nvim
	fi

	if [ -d ~/.cache/nvim ]; then
		rm -rfv ~/.cache/nvim
	fi

	mkdir -pv ~/.config/nvim/lua/config
	mkdir -v ~/.config/nvim/lua/plugins

	# stow
	cd ~/dotfiles
	stow --verbose nvim
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_nvim "$@"
fi
