#!/bin/zsh env


if [ -f "$HOME"/.aliases ]; then
  source ~/.aliases
fi

if [ -f "$HOME"/.zshenv ]; then
  source "$HOME"/.zshenv
fi

# Source functions
if [ -f "$HOME"/.functions ]; then
  source "$HOME"/.functions
fi


## Download Znap, if it's not there yet.
[[ -r ~/.config/zsh-snap/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.config/zsh-snap/znap
	source ~/.config/zsh-snap/znap/znap.zsh




ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source zsh-users/zsh-autosuggestions


znap source zsh-users/zsh-syntax-highlighting

# Auto-completes and Edits
znap source marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-edit

znap source marlonrichert/zcolors
znap eval  zcolors "zcolors ${(q)LS_COLORS}"

fastfetch
PS1="%F{green}%~%f $ "
znap prompt



