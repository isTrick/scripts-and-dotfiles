#!/bin/bash

sudo pacman -Syu
sudo pacman -S --needed base-devel cargo

# paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd .. && rm -rf paru

# fish shell
sudo pacman -S fish
chsh -s /usr/bin/fish




