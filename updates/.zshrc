#!/usr/bin/env zsh
#
if [[ -e "${HOME}/.profile" ]]; then
  source "${HOME}/.profile"
fi

# Define constants
ZSH_SNAP_PATH="$HOME/.config/zsh-snap/znap"
GIT_REPO="https://github.com/marlonrichert/zsh-snap.git"

# Clone zsh-snap if not already present
[[ ! -r $ZSH_SNAP_PATH/znap.zsh ]] && git clone --depth 1 $GIT_REPO $ZSH_SNAP_PATH

# Source znap.zsh
source $ZSH_SNAP_PATH/znap.zsh

# Define and source file array
files=(.vulkanpaths .functions .fzf.zsh .lscolors .aliases .zprofile)
for file in "${files[@]}"; do
    file="$HOME/$file"
    [[ -f $file ]] && source $file
done

# Define and source plugins array
plugins=(marlonrichert/zsh-autocomplete marlonrichert/zsh-edit marlonrichert/zsh-hist)
for plugin in "${plugins[@]}"; do
    znap source $plugin
done

# Source zsh-autosuggestions and set strategy to 'history'
ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source zsh-users/zsh-autosuggestions

# Source zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting

# Source LS_COLORS and zcolors
znap source trapd00r/LS_COLORS
znap eval trapd00r/LS_COLORS "$(whence -a dircolors gdircolors) -b LS_COLORS"
znap source marlonrichert/zcolors
znap eval marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"

# Bind keys
bindkey '^[q' push-line-or-edit
bindkey -r '^Q' '^[Q'

# Load git plugin
znap eval omz-git 'curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/git/git.plugin.zsh'

# Source prompt
source "$HOME/prompt34"
znap prompt

