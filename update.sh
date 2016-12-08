#!/usr/bin/env bash

# UPDATE
# Will update brew dependencies.

dots="$HOME/.dotfiles"

# 1) Homebrew
echo -e "\033[32mUpdating Homebrew\033[0m"

# Update
echo "···· Upgrading"
brew update
brew upgrade

# Clean old packages
echo "···· Cleaning up"
brew cleanup
brew cask cleanup
brew doctor
brew prune

# 2) Atom
echo -e "\033[32mUpdating Atom\033[0m"
apm update

# 3) Update git
echo -e "\n\033[32mUpdating Repository\033[0m"
cd $dots
git stash
git pull --rebase origin master
git stash apply
git stash clear

# 4) Symlink config
echo -e "\n\033[32mSymlinking Configuration\033[0m"
bash "$dots/symlink.sh"

# 5) Done
echo -e "\n\033[32mComplete!\033[0m"
