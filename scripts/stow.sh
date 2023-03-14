#!/bin/bash

set -o errexit

sudo pacman -S --needed stow

stow_package () {
    # get package name from user
    package = "$1"
    
    # change to stow directory
    cd ~/dotfiles
    
    # run stow command
    stow $package
}

