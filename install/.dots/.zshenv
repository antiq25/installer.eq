#!/bin/zsh env

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export PATH="$HOME/miniforge3/bin:/usr/local/anaconda3/bin:$PATH"
export NNN_TMPFILE="$HOME/.config/nnn/.lastd"
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"
export XDG_CONFIG_HOME="$HOME/.config"
export cargo_bin_path="$HOME/.cargo/bin"
export MICRO_TRUECOLOR="1"


if [[ ":$PATH:" != *":$cargo_bin_path:"* ]]; then
    export PATH="$cargo_bin_path:$PATH"
fi

# Brew environment
if [[ -f /opt/homebrew/bin/brew ]]; then
	eval "$("/opt/homebrew/bin/brew" shellenv)"
fi



