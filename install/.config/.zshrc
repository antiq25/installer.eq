#!/bin/zsh

# Setup Znap
if [ ! -r $HOME/.config/zsh-snap/znap/znap.zsh ]; then
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git $HOME/.config/zsh-snap/znap
fi

source $HOME/.config/zsh-snap/znap/znap.zsh

eval "$(starship init zsh)"
 

# Array of files to source
declare -a source_files=("$HOME/.aliases" "$HOME/.functions" "~/.fzf.zsh" "$HOME/.lscolors")

# Loop through files and source them if they exist
for file in "${source_files[@]}"; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Configure ZSH autosuggest strategy
ZSH_AUTOSUGGEST_STRATEGY=( history )

# Source ZSH plugins
declare -a zsh_plugins=("zsh-users/zsh-autosuggestions" "zsh-users/zsh-syntax-highlighting" "marlonrichert/zsh-edit" "marlonrichert/zsh-autocomplete" "marlonrichert/zcolors")

for plugin in "${zsh_plugins[@]}"; do
    znap source "$plugin"
done

# Configure zcolors
znap eval zcolors "zcolors ${(q)LS_COLORS}"

fastfetch
