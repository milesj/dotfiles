# Dotfiles

These are my dotfiles -- they are written for OSX. This is simply a reminder to myself on how to
install them!

### Install

This will clone the repository to the home directory and run the installation script. The script
will install Homebrew and its packages, symlink configuration dotfiles, setup Git, OSX, ZSH, VSCode,
and more.

```
git clone git@github.com:milesj/dotfiles.git ~/.dotfiles
bash ~/.dotfiles/install.sh
```

Also install the following:

```bash
bash ~/.dotfiles/install-zsh-plugins.sh
bash ~/.dotfiles/install-vscode-extensions.sh
```

And finally, install the Powerline fonts. https://github.com/powerline/fonts

### Update

This will update Homebrew, Atom, VSCode, and any packages, fetch the latest Git repository (will
stash changes to avoid conflicts), and re-symlink.

```
bash ~/.dotfiles/update.sh
```

### Uninstall

There is no uninstall script. If it's really necessary, just delete the repository and all symlinked
files manually.
