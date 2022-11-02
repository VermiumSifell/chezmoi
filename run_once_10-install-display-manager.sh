#!/bin/sh
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable --now lightdm
