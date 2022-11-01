#!/bin/sh
sudo pacman -S feh i3-gaps polybar alacritty zsh emacs ttf-font-awesome slock playerctl brightnessctl lightdm lightdm-gtk-greeter pipewire wireplumber pipewire-pulse
~/.emacs.d/bin/doom install
systemctl enable --user --now pipewire.socket
systemctl enable --user --now pipewire-pulse.socket
sudo systemctl enable --now lightdm
