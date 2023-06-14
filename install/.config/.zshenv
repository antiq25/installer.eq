# Local config
export CACHEDIR="$HOME/.local/share"

# Locale settings
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# PATH settings
export PATH="$HOME/miniforge3/bin:/usr/local/anaconda3/bin:$PATH"

# nnn settings
export NNN_TMPFILE="$HOME/.config/nnn/.lastd"

# Editor settings
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"

# Config home settings
export XDG_CONFIG_HOME="$HOME/.config"

# cargo settings
export cargo_bin_path="$HOME/.cargo/bin"

# micro settings
export MICRO_TRUECOLOR="1"

# Add cargo bin path to PATH if not already present
if [[ ":$PATH:" != *":$cargo_bin_path:"* ]]; then
    export PATH="$cargo_bin_path:$PATH"
fi

# Brew environment
if [[ -f /opt/homebrew/bin/brew ]]; then
	eval "$("/opt/homebrew/bin/brew" shellenv)"
fi

# Source the cargo environment
if [[ -f "$HOME/.cargo/env" ]]; then
    . "$HOME/.cargo/env"
fi

# Source the Vulkan paths if the file exists
if [[ -f "$HOME/.vulkanpaths" ]]; then
    . "$HOME/.vulkanpaths"
fi
