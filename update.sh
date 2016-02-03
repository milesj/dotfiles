#!/usr/bin/env bash

# UPDATE
# Will update brew dependencies.

# 1) Homebrew
echo -e "\033[32mUpdating Homebrew\033[0m"

# Update
echo "···· Upgrading"
brew update
brew upgrade --all

# Clean old packages
echo "···· Cleaning up"
brew cleanup
brew doctor

# 2) Symlink config
echo -e "\n\033[32mSymlinking Configuration\033[0m"
bash ./symlink.sh

# 3) Done
echo -e "\n\033[32mComplete!\033[0m"
