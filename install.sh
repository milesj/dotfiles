#!/usr/bin/env bash

# INSTALL
# Will install brew dependencies and symlink configuration.

sudo -v

dots="$HOME/.dotfiles";

if [ ! -d "$dots" ]; then
    echo "~/.dotfiles/ does not exist!";
    exit 1;
fi;

source "$dots/.functions";

# 1) Homebrew
echo -e "\033[32mInstalling Homebrew\033[0m"

if ! exists brew; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi;

# Install taps
echo "···· Tapping dependencies"
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

# Install packages
echo "···· Downloading packages"
brew install vim --override-system-vi
brew install git
brew install scmpuff
brew install curl
brew install openssl
brew install node
brew install rbenv ruby-build
brew install php70 php70-opcache php70-libsodium
brew install composer

# Clean old packages
echo "···· Verifying install"
brew doctor

# 2) Symlink config
echo -e "\n\033[32mSymlinking Configuration\033[0m"
bash "$dots/symlink.sh"

# 3) Setup git
echo -e "\n\033[32mSetting Up Git\033[0m"

# Email
echo -n "···· Enter email and press [enter]: "
read email
git config --global user.email "$email"

# 4) Setup OSX
echo -e "\n\033[32mSetting Up OSX\033[0m"
bash "$dots/.osx"

# 5) Done
echo -e "\n\033[32mComplete!\033[0m"
