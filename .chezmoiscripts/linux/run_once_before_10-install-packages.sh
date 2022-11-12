{{ if (eq .chezmoi.osRelease.id "arch") -}}
#!/bin/bash

#set -eufo pipefail

#echo -e "\033[0;32m>>>>> Begin Setting Up Arch Linux Packages <<<<<\033[0m"

#packages=(
#  curl
#  git
#  npm
#  unzip
#  ttf-font-awesome
#  ttf-fira-code
#  noto-fonts-emoji
#  ttf-joypixels
#  ttf-liberation
#)

#aur_packages=(
#  ttf-symbola
#  otf-openmoji
#  ttf-twemoji
#)

#{{   if (not .headless) -}}
#packages+=(
#  wezterm
#)
#{{   end -}}

#{{   if .i3wm -}}
#packages+=(
#  i3-gaps
#  polybar
#  rofi
#  dunst
#)
#{{   end -}}

#{{   if .swaywm -}}
#packages+=(
#  sway
#  swayidle
#  waybar
#  dunst
#  python-i3ipc
#)

#aur_packages+=(
#  nwg-dock
#  rofi-lbonn-wayland-git
#)

#{{   end -}}

#echo "updating packages"
#{{   if ne .chezmoi.username "root" -}}
#sudo pacman -Syu --noconfirm
#{{   else -}}
#pacman -Syu --noconfirm
#{{   end -}}

#for package in ${packages[@]}; do
#  if [ "$(pacman -Qq $package 2> /dev/null)" != $package ]; then
#    echo "installing $package"
#{{-   if ne .chezmoi.username "root" }}
#    sudo pacman -S --noconfirm $package
#{{-   else }}
#    pacman -S --noconfirm $package
#{{-   end }}
#  fi
#done

## Install paru
#if [ ! $(command -v paru) ]; then
#  echo "installing paru"
#{{-   if ne .chezmoi.username "root" }}
#  sudo pacman -S --needed --noconfirm git base-devel
#{{-   else}}
#  pacman -S --needed --noconfirm git base-devel
#{{-   end }}
#  git clone https://aur.archlinux.org/paru.git /tmp/paru
#  cd /tmp/paru
#  makepkg -si --noconfirm
#  cd -
#  rm -rf /tmp/paru
#fi

#for aur_package in ${aur_packages[@]}; do
#  if [ $(pacman -Qq $aur_package 2> /dev/null) != $aur_package ]; then
#    echo "installing $aur_package from AUR"
#    paru -S --noconfirm $aur_package
#  fi
#done

#echo -e "\033[0;32m>>>>> Finish Setting Up Arch Linux Packages <<<<<\033[0m"
#{{ end -}}
