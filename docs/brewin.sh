#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew is not installed. Please install Homebrew (https://brew.sh/) before running this script."
    exit 1
fi

# Specify the path to your Brewfile
BREWFILE_PATH="/Users/anti/installer/docs/Brewfile"

# Check if the Brewfile exists
if [[ ! -f $BREWFILE_PATH ]]; then
    echo "Brewfile not found at $BREWFILE_PATH. Please update the script with the correct path."
    exit 1
fi

# Update Homebrew and install dependencies from Brewfile
brew update
brew bundle --file=$BREWFILE_PATH

# Check if the installation was successful
if [[ $? -eq 0 ]]; then
    echo "Brewfile installation completed successfully."
else
    echo "Brewfile installation encountered an error."
fi


