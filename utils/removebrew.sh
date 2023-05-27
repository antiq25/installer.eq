#!/bin/bash

# Uninstall all installed packages
brew list --formula | xargs brew uninstall --force

# Uninstall all installed casks
brew list --cask | xargs brew uninstall --force --cask --zap

# Remove all cached downloads
brew cleanup --prune=all --force
brew cleanup --prune-prefix

# Uninstall Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# Remove Homebrew from the shell environment
sed -i.bak '/eval "$(/opt\/homebrew\/bin\/brew shellenv)"/d' $HOME/.zprofile

# Remove any remaining Homebrew directories and files
sudo rm -rf /usr/local/Homebrew
sudo rm -rf /opt/homebrew/

# Remove Homebrew locks directory
sudo rm -rf /opt/homebrew/var/homebrew/locks

# Remove Homebrew temporary files
sudo rm -rf /opt/homebrew/var/tmp/*

# Remove the entire /opt directory
sudo rm -rf /opt
