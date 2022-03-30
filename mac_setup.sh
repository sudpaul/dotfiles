# Install Homebrew (if not installed)
# Check if exists
command -v brew >/dev/null 2>&1 || { echo "Installing Homebrew.."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  } >&2;
echo "Homebrew successfully installed"

# If exists make sure to update the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Installs Casks
brew tap homebrew/cask

## Installing browser and plugins
echo "Installing Google Chorme and Firefox"
brew install google-chrome #Chrome
brew install firefox
echo "Google Chrome and Firefox successfully installed "
echo "Installing Plugins for the browsers"
brew install homebrew/cask-versions/firefox-nightly # Nightly
brew install homebrew/cask-versions/google-chrome-canary # Chrome Canary

## Installing git
echo "Installing git.."
brew install git
echo "git successfully installed"

echo "Installing VS Code.."
brew install --cask visual-studio-code
## this might ask you for your password
code --version
echo "VS Code successfully installed"

echo "Installing anaconda.."
curl -O https://repo.anaconda.com/archive/Anaconda3-2021.05-MacOSX-x86_64.sh
bash Anaconda3-2021.05-MacOSX-x86_64.sh -u -b -f
rm Anaconda3-2021.05-MacOSX-x86_64.sh
echo "Anaconda installed succesfully"

echo "Installing Microsoft Office"
brew install --cask microsoft-office
echo "Microsoft Office installed successfully"

echo "Installing Grammarly"
brew install grammarly
echo "Grammarly installed successfully"

echo "Installing DBeaver"
brew install --cask dbeaver-community
echo "DBeaver community installed successfully"
# Remove outdated versions from the cellar.
brew cleanup