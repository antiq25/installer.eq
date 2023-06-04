#!/bin/zsh

# Array of files to source
declare -a source_files=("$HOME/.aliases" "$HOME/.zshenv" "$HOME/.functions" "~/.fzf.zsh" "$HOME/.lscolors"  "$HOME/.vulkanpaths")

# Loop through files and source them if they exist
for file in "${source_files[@]}"; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done

# Initialize starship
eval "$(starship init zsh)"

# Setup Znap
if [ ! -r ~/.config/znap/znap.zsh ]; then
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/.config/znap
fi

source ~/.config/znap/znap.zsh

# Configure ZSH autosuggest strategy
ZSH_AUTOSUGGEST_STRATEGY=( history )

# Source ZSH plugins
declare -a zsh_plugins=("zsh-users/zsh-autosuggestions" "zsh-users/zsh-syntax-highlighting" "marlonrichert/zsh-edit" "marlonrichert/zsh-autocomplete" "marlonrichert/zcolors")

for plugin in "${zsh_plugins[@]}"; do
    znap source "$plugin"
done

# Configure zcolors
znap eval zcolors "zcolors ${(q)LS_COLORS}"

# Run fastfetch
fastfetch
