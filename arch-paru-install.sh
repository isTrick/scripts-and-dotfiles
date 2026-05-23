#!/bin/bash

sudo pacman -Syu
sudo pacman -S --needed base-devel cargo

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd .. && rm -rf paru
