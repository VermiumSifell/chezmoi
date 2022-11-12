#!/bin/sh
sudo pacman --noconfirm -S lightdm lightdm-gtk-greeter
sudo systemctl enable --now lightdm
