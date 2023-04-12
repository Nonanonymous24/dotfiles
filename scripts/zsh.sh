#!/bin/bash

config_zsh() {
	# install packages
	sudo pacman -S curl zsh

	# omz
	sudo chsh -s /usr/bin/zsh

	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" <<EOF 

  EOF
	
  # powerlevel10k
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

	# plugins
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	# create directory structure
	if [ -d ~/.zsh ]; then
		rm -rfv ~/.zsh
	fi

	if [ -f ~/.zshrc ]; then
		rm -v ~/.zshrc
	fi

	mkdir ~/.zsh

	# stow
	cd ~/dotfiles
	stow --verbose zsh

  source ~/.zshrc <<EOF

  EOF
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
	config_zsh "$@"
fi
