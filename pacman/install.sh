#!/usr/bin/env bash

#Update repositories
sudo pacman -Sy

#Arch packges install
packages=(
	git
	powerline-fonts
	vim
	yaourt
	zsh
)

sudo pacman -S "${packages[@]}" --needed --noconfirm

#AUR packages install
aur_packages=(
	antigen-git
)

yaourt -S "${aur_packages[@]}" --needed --noconfirm
