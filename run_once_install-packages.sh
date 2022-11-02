#!/bin/sh
sudo pacman -S meson feh i3-gaps polybar alacritty zsh emacs ttf-font-awesome slock playerctl brightnessctl pipewire wireplumber pipewire-pulse ttf-fira-code
systemctl enable --user --now pipewire.socket
systemctl enable --user --now pipewire-pulse.socket

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

paru -S mu
