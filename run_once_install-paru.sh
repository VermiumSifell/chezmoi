#!/bin/env sh
sudo pacman -S --needed base-devel
cd .paru
makepkg -si
cd -
