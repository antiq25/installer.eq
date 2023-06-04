#!/bin/bash

sudo -v

echo "Installing Python files.."
sleep 1

python3 $HOME/installer.eq/install/get-pip.py
sh $HOME/installer.eq/py.sh 

echo "Pip installed!"
sleep 1

echo 'Installing MacOS Config'


# Enable highlight hover effect for the grid view of a stack (Dock)
sudo defaults write com.apple.dock mouse-over-hilite-stack -bool true
# Minimize windows into their application’s icon
sudo defaults write com.apple.dock minimize-to-application -bool true
# Auto Hide Dock
sudo defaults write com.apple.dock "autohide" -bool "true"
# Don't Show Recent Applications
sudo defaults write com.apple.dock "show-recents" -bool "false"
# Change Default Minimize Effect
sudo defaults write com.apple.dock "mineffect" -string "scale"

# Screenshots
# Remove Shadows from Screenshots
sudo defaults write com.apple.screencapture "disable-shadow" -bool "true"
# Change save location
sudo defaults write com.apple.screencapture location -string "$HOME/Pictures/screenshots/"
# Change file format
sudo defaults write com.apple.screencapture type -string "png"

# Menubar
# Change Clock to 24hr format
sudo defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm\""
# Hide the menu bar
sudo defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Mission Control
# Don't Automatically rearrange spaces
sudo defaults write com.apple.dock "mru-spaces" -bool "false"
# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# 14: Quick Notes
# Top left screen corner → Mission Control
sudo defaults write com.apple.dock wvous-tl-corner -int 2
sudo defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Desktop
sudo defaults write com.apple.dock wvous-tr-corner -int 12
sudo defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Start screen saver
sudo defaults write com.apple.dock wvous-bl-corner -int 14
sudo defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner → Start screen saver
sudo defaults write com.apple.dock wvous-br-corner -int 4
sudo defaults write com.apple.dock wvous-br-modifier -int 0
# Restart Dock
killall dock

# Time Machine
# Don't offer to use disk as TM Backup
sudo defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"
# Set highlight color to green
sudo defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"
# Expand save panel by default
sudo defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
sudo defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
# Expand print panel by default
sudo defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
sudo defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
# Automatically quit printer app once the print jobs complete
sudo defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
# Disable the “Are you sure you want to open this application?” dialog
sudo defaults write com.apple.LaunchServices LSQuarantine -bool false
# Enable full keyboard access for all controls
# NOTE: (e.g. enable Tab in modal dialogs)
sudo defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
# Set a blazingly fast keyboard repeat rate
sudo defaults write NSGlobalDomain KeyRepeat -int 1
sudo defaults write NSGlobalDomain InitialKeyRepeat -int 10
# Enable subpixel font rendering on non-Apple LCDs
# NOTE: Reference: https://github.com/kevinSuttle/macOS-sudo defaults/issues/17#issuecomment-266633501
sudo defaults write NSGlobalDomain AppleFontSmoothing -int 1
# Enable HiDPI display modes (requires restart)
sudo sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

##
# A P P S
##

# Finder
# Show hidden files
sudo defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
# Show file extensions
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Keep folders on top when sorting by name
sudo defaults write com.apple.finder _FXSortFoldersFirst -bool true
# When performing a search, search the current folder by default
sudo defaults write com.apple.finder FXsudo defaultsearchScope -string "SCcf"
# Disable finder animations
sudo defaults write com.apple.finder DisableAllAnimations -bool true
# Disable warning when changing file extension
sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Hide desktop icons
sudo defaults write com.apple.finder CreateDesktop false
sudo defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
sudo defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
sudo defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
sudo defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
# Hide status bar
sudo defaults write com.apple.finder ShowStatusBar -bool false
# Show path in title bar
sudo defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Avoid creating .DS_Store files on network or USB volumes
sudo defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
sudo defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# Use list view in all Finder windows by default
# NOTE: Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
sudo defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Show the ~/Library folder
chflags nohidden ~/Library
# Show the /Volumes folder
sudo chflags nohidden /Volumes
# Show quit option
sudo defaults write com.apple.finder QuitMenuItem -bool true
# Restart Finder
killall Finder

# Mail
# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
sudo defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\U21a9" # Display emails in threaded mode, sorted by date (newest at the top)
sudo defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
sudo defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedAscending" -string "yes"
sudo defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"
# Disable inline attachments (just show the icons)
sudo defaults write com.apple.mail DisableInlineAttachmentViewing -bool true
# Include address names in clipboard
sudo defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# App Store
# Enable the automatic update check
sudo defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
# Download newly available updates in background
sudo defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
# Install System data files & security updates
sudo defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
# Turn on app auto-update
sudo defaults write com.apple.commerce AutoUpdate -bool true
# Allow the App Store to reboot machine on macOS updates
sudo defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

# Safari
# Don't automatically open downloads
sudo defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# Enable developer extras
sudo defaults write com.apple.Safari IncludeDevelopMenu -bool true
sudo defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
sudo defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

sudo defaults write NSGlobalDomain AppleAccentColor -int 1
sudo defaults write NSGlobalDomain AppleHighlightColor -string "0.65098 0.85490 0.58431"
sudo defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
sudo defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
sudo defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
sudo defaults write com.apple.LaunchServices LSQuarantine -bool false
sudo defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
sudo defaults write com.apple.spaces spans-displays -bool false

echo "Removing default mission control hostkeys"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 118 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>18</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 119 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>19</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 120 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>20</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 121 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>21</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 122 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>23</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 123 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>22</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"

sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 124 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>26</integer>
      <integer>262144</integer>
    </array>
  </dict>
</dict>
"
sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 79 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>123</integer>
      <integer>8650752</integer>
    </array>
  </dict>
</dict>
"
sudo defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 81 "
<dict>
  <key>enabled</key><false/>
  <key>value</key><dict>
    <key>type</key><string>standard</string>
    <key>parameters</key>
    <array>
      <integer>65535</integer>
      <integer>124</integer>
      <integer>8650752</integer>
    </array>
  </dict>
</dict>
"
echo "Disabled macOS mission control shortcuts. SKHD handles yabai spaces."

echo "Reloading plist changes..."
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

# Restart affected apps
killall Dock
killall SystemUIServer

sleep 1

echo "Done"

sleep 1

#Finalize
read -p "Do you want to install unixporn wallpapers? (yes/no): " response

if [[ "$response" == "yes" ]]; then
    echo "Downloading Wallpapers...."
    git clone https://github.com/BitterSweetcandyshop/wallpapers
elif [[ "$response" == "no" ]]; then
    echo "You chose 'no'."
    echo "INSTALLATION COMPLETE!!"
    # Perform the desired action when the user chooses 'no'
else
    echo "Invalid response. Please enter 'yes' or 'no'"
fi

read -p "You should restart your computer. Do it now? (yes/no): " response

if [[ "$response" == "yes" ]]; then
    sleep 1
    echo "1"
    sleep 1
    echo "2"
    sleep 1
    echo "3"
    sleep 1
    echo "4"
    sleep 1
    echo "RESTARTING!"

    sudo shutdown -r NOW

elif [[ "$response" == "no" ]]; then
    echo "You chose 'no'."
    echo "INSTALLATION COMPLETE!!"
    # Perform the desired action when the user chooses 'no'
else
    echo "Invalid response. Please enter 'yes' or 'no'"
fi
