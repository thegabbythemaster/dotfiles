#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR #EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Make dotfiles executable.
[ -f "$DOTFILES_DIR/bin/dotfiles" ] && chmod +x $DOTFILES_DIR/bin/dotfiles

# Symlink profiles
ln -sfv "$DOTFILES_DIR/symlink/.zprofile" ~
ln -sfv "$DOTFILES_DIR/symlink/.zshenv" ~
ln -sfv "$DOTFILES_DIR/symlink/.zshrc" ~

# Package managers & packages
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/mas-cli.sh"
. "$DOTFILES_DIR/macos/defaults.sh"
. "$DOTFILES_DIR/macos/defaults.dock.sh"