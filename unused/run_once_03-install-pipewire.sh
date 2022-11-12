#!/bin/env sh
#sudo pacman --noconfirm -S pipewire wireplumber pipewire-pulse
systemctl enable --user --now pipewire.socket
systemctl enable --user --now pipewire-pulse.socket
