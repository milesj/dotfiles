set DOTS "$HOME/.dotfiles"

# 1) Homebrew
echo -e "\033[32mUpdating Homebrew\033[0m"

echo "···· Upgrading"
brew update
brew upgrade
echo "···· Cleaning up"
brew cleanup --prune
brew doctor

# 2) Git
echo -e "\n\033[32mUpdating Repository\033[0m"

cd $DOTS
git stash
git pull --rebase origin master
git stash apply
git stash clear

# 3) Symlink
fish "$DOTS/symlink.fish"
