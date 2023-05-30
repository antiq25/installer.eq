# Exports
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export VISUAL="nvim"
export EDITOR="$VISUAL"
export MICRO_TRUECOLOR="1"
export GIT_EDITOR='nvim'
export CLICOLOR='truecolor'
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="/Users/anti/miniforge3/bin:$PATH"
export PATH="$HOME/miniforge3/bin:/usr/local/anaconda3/bin:$PATH"


export cargo_bin_path="$HOME/.cargo/bin"
if [[ ":$PATH:" != *":$cargo_bin_path:"* ]]; then
    export PATH="$cargo_bin_path:$PATH"
fi

# Brew environment
if [[ -f /opt/homebrew/bin/brew ]]; then
	eval "$("/opt/homebrew/bin/brew" shellenv)"
fi


source "$HOME/.vulkanpaths"
