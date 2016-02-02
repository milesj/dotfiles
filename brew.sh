#!/usr/bin/env bash

# BREW
# Will update and install all defined brews.

# Update
brew update
brew upgrade --all

# Install packages
brew install vim --override-system-vi
brew install git
brew install curl
brew install node
brew install rbenv ruby-build
brew install php70 php70-intl php70-opcache php70-libsodium
brew install php70-memcached --HEAD
brew install php70-redis --HEAD
brew install openssl
brew install memcached
brew install redis

# Clean old packages
brew cleanup
brew doctor
