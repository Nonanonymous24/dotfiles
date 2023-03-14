#!/bin/bash

set -o errexit

install_gtk (){
    # install required packages
    sudo pacman -S --needed gnome-themes-standard gtk-engine-murrine
    sudo pacman -S --needed papirus-icon-theme

    yay -S --needed catppuccin-gtk-theme-mocha
    yay -S --needed papirus-folders-catppuccin-git

    # set papirus colors
    papirus-folders --verbose --color cat-mocha-teal
    
    # create directories
    if ! [ -d ~/.config/gtk-3.0 ]
    then
        mkdir ~/.config/gtk-3.0
    fi

    # remove existing config files
    if [ -f ~/.config/gtk-3.0/settings.ini ]
    then
        rm ~/.config/gtk-3.0/settings.ini
    fi
}

# stow if run from this script
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    source ~/dotfiles/scripts/stow.sh
    stow_package gtk-3.0
fi
