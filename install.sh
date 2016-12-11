#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

. "$DOTFILES_DIR/pacman/install.sh"

for ZSH_CONFIG_FILE in $(find $DOTFILES_DIR/zsh -mindepth 1)
do
	ln -svf $ZSH_CONFIG_FILE ~
done
sudo chsh -s $(which zsh) $(whoami)

ln -vf $DOTFILES_DIR/git/.gitconfig ~
