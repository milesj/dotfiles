set DOTS "$HOME/.dotfiles"

if not test -d $DOTS
    echo "~/.dotfiles/ does not exist!"
    exit 1
end

# 1) Homebrew
echo -e "\033[32mInstalling Homebrew\033[0m"

if not type -q brew
    ruby -e "(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
end

echo "···· Tapping dependencies"
brew tap caskroom/cask

echo "···· Installing packages"
brew install vim --override-system-vi
brew install git
brew install scmpuff
brew install curl
brew install openssl
brew install node
brew install fish

echo "···· Verifying install"
brew doctor

# 2) Fish
echo -e "\033[32mSetting Up Fish\033[0m"

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# 3) Symlink
fish "$DOTS/symlink.fish"

# 4) Git
echo -e "\033[32mSetting Up Git\033[0m"

echo -n "···· Name [enter]: "
read name
git config --global user.name "$name"

echo -n "···· Email [enter]: "
read email
git config --global user.email "$email"

# 5) OSX
echo -e "\033[32mSetting Up OSX\033[0m"

bash "$DOTS/.osx"
