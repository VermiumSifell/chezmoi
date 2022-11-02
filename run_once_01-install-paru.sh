#!/bin/env sh
sudo pacman --noconfirm -S --needed base-devel
cd .paru
makepkg --noconfirm -si
cd -
