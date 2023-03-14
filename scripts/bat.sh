#!/bin/bash

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
}
