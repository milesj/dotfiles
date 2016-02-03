#!/usr/bin/env bash

# BREW
# Will update and install all defined brews.

# Update
brew update
brew upgrade --all

# Install taps
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

# Install packages
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
brew cleanup
brew doctor
