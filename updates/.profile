export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/Users/anti/.cargo/bin:$PATH"
export PATH="${HOME}/miniforge3/bin:/opt/homebrew/anaconda3/bin:$PATH"
export PATH="${HOME}/bin:$PATH"
export PATH="${HOME}/.local/bin:$PATH"

# XDG settings
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# nnn settings
export NNN_TMPFILE="${HOME}/.config/nnn/.lastd"

# Editor settings
export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"

# micro settings
export MICRO_TRUECOLOR="1"

# Source the cargo environment
if [[ -f "$CARGO_ENV_PATH" ]]; then
  source "$CARGO_ENV_PATH"
fi






