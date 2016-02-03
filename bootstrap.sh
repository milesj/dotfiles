#!/usr/bin/env bash

# TODO - Setup git email
# TODO - Symlink atom config

# BOOTSTRAP
# Install the dotfiles by symlinking them to the users folder.

dots="$HOME/.dotfiles";

# Symlink files
if [ -d "$dots" ]; then
    echo "Symlinking dotfiles from $dots/";
else
    echo "$dots does not exist";
    exit 1;
fi

for from in $(find $dots -name ".*" -type f -maxdepth 1); do
    file="${from##*/}";
    to="$HOME/$file";

    rm -f "$to";
    ln -s "$from" "$to";

    echo "    $file --> $to";
done

# Source the profile
source "$HOME/.bash_profile"
