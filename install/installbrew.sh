#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Wait for 5 seconds after Homebrew installation
echo "Waiting for Homebrew to finish installation..."
sleep 5

# Add Homebrew to the shell environment
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile

# Reload the shell environment
eval "$(/opt/homebrew/bin/brew shellenv)"

ECHO HOMEBREW INSTALLED. PLEASE RESTART YOURT TERMINAL TO ACTIVATE 'BREW' 

