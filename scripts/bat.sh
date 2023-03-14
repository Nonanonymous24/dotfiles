#!/bin/bash

set -o errexit

install_bat () {
    # check if package is installed
    sudo pacman -S --needed bat

    # create directories
    if ! [ -d ~/.config/bat ]
    then
        mkdir -p ~/.config/bat/themes
    elif ! [ -d ~/.config/bat/themes ]
    then
        mkdir ~/.config/bat/themes
    fi

    # remove existing config files
    if [ -f ~/.config/bat/config ]
    then
        rm ~/.config/bat/config
    fi
    
    if [ -f ~/.config/bat/themes/Catppuccin-mocha.tmTheme ]
    then
        rm ~/.config/bat/themes/Catppuccin-mocha.tmTheme
    fi
}

# stow if run from this script
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    source ~/dotfiles/scripts/stow.sh
    stow_package bat
fi
