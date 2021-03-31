DOTS="$HOME/.dotfiles"

# 1) Homebrew
echo -e "\033[32mUpdating Homebrew\033[0m"

echo "···· Upgrading"
brew update
brew upgrade

echo "···· Cleaning up"
brew cleanup --prune 7
brew doctor

# 2) Git
echo -e "\033[32mUpdating Git\033[0m"

cd $DOTS
git stash
git checkout origin master
git pull --rebase origin master
git stash apply
git stash clear

# 4) Symlink
bash "$DOTS/symlink.sh"
