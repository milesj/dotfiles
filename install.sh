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
brew tap caskroom/cask
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

# Install packages
echo "···· Installing packages"
brew install vim --override-system-vi
brew install git
brew install scmpuff
brew install curl
brew install openssl
brew install node yarn
brew install rbenv ruby-build
brew install php70 php70-opcache php70-libsodium composer

# Install applications
echo "···· Installing applications"
brew cask install google-chrome
brew cask install firefox
brew cask install atom
brew cask install spotify
brew cask install slack
brew cask install caffeine
brew cask install dashlane
brew cask install virtualbox
brew cask install vagrant
brew cask install steam
brew cask install battle-net
brew cask install vlc

# Clean old packages
echo "···· Verifying install"
brew doctor

# 2) Symlink config
echo -e "\n\033[32mSymlinking Configuration\033[0m"
bash "$dots/symlink.sh"

# 3) Setup git
echo -e "\n\033[32mSetting Up Git\033[0m"

# Name
echo -n "···· Name [enter]: "
read name
git config --global user.name "$name"

# Email
echo -n "···· Email [enter]: "
read email
git config --global user.email "$email"

# 4) Setup OSX
echo -e "\n\033[32mSetting Up OSX\033[0m"
bash "$dots/.osx"

# 5) Setup Atom
echo -e "\n\033[32mSetting Up Atom\033[0m"
apm install sort-lines
apm install tool-bar
apm install language-rust
apm install language-babel
apm install language-ini
apm install language-graphql
apm install language-php
apm install linter-sass-lint
apm install linter-eslint
apm install linter-rust
apm install linter-php
apm install caniuse
apm install hyperclick
apm install js-hyperclick
apm install hyperclick-php
apm install nuclide
apm install nuclide-format-js
apm install atom-beautify
apm install file-icons
apm install highlight-selected
apm install fonts
apm install docblockr

# 6) Done
echo -e "\n\033[32mComplete!\033[0m"
