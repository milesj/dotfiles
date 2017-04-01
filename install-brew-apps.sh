#!/usr/bin/env bash

echo -e "\033[32mInstalling Homebrew applications\033[0m"

brew cask install google-chrome
brew cask install firefox
# Atom self-updates are broken when Atom is installed via Homebrew
# brew cask install atom
brew cask install spotify
brew cask install slack
brew cask install caffeine
brew cask install dashlane
brew cask install virtualbox
brew cask install vagrant
brew cask install vlc

echo -e "\n\033[32mComplete!\033[0m"
