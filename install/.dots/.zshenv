#!/usr/bin/env zsh

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/bin:$PATH"
export PATH="/Users/anti/.cargo/bin:$PATH"
export PATH="/Users/anti/miniforge3/bin:$PATH"
export PATH="/Users/anti/VulkanSDK/macOS/bin:$PATH"
export PATH="/Users/anti/.nix-profile/bin:$PATH"
export PATH="/nix/var/nix/profiles/default/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"
export PATH="/Library/Frameworks/Mono.framework/Versions/Current/Commands:$PATH"
export PATH="/Applications/kitty.app/Contents/MacOS:$PATH"
export PATH="/Users/anti/kitty/kitty.app/Contents/MacOS:$PATH"
source "$HOME/.vulkanpaths"

# XDG settings
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# nnn settings
export NNN_TMPFILE="$HOME/.config/nnn/.lastd"

# Editor settings
export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"

# micro settings
export MICRO_TRUECOLOR="1"

# Source the cargo environment
if [[ -f "$CARGO_ENV_PATH" ]]; then
  source "$CARGO_ENV_PATH"
fi
