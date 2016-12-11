#!/usr/bin/env bash

#Update repositories
sudo pacman -Sy

#Arch packges install
packages=(
	base-devel
	git
	powerline-fonts
	vim
	zsh
)

sudo pacman -S "${packages[@]}" --needed --noconfirm

if ! hash yaourt 2>/dev/null; then
	git clone https://aur.archlinux.org/package-query.git
	cd package-query
	makepkg -si --noconfirm
	cd ..
	git clone https://aur.archlinux.org/yaourt.git
	cd yaourt
	makepkg -si --noconfirm
	cd ..
	rm -rf yaourt package-query
fi

#AUR packages install
aur_packages=(
	antigen-git
)

yaourt -S "${aur_packages[@]}" --needed --noconfirm
