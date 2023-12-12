# Source zshenv and zprofile if they exist
if [[ -e "${HOME}/.zshenv" ]]; then
  source "${HOME}/.zshenv"
fi

if [[ -e "${HOME}/.zprofile" ]]; then
  source "${HOME}/.zprofile"
fi

# Install zsh-snap if it doesn't exist
ZSH_SNAP_PATH="$HOME/.config/zsh-snap/znap"
GIT_REPO="https://github.com/marlonrichert/zsh-snap.git"
if [[ ! -r "$ZSH_SNAP_PATH/znap.zsh" ]]; then
  git clone --depth 1 "$GIT_REPO" "$ZSH_SNAP_PATH"
fi
source "$ZSH_SNAP_PATH/znap.zsh"

# Source files
files=(
  ".functions"
  ".fzf.zsh"
  ".lscolors"
  ".aliases"
  ".funcs"
)
for file in "${files[@]}"; do
  file="$HOME/$file"
  if [[ -f "$file" ]]; then
    source "$file"
  fi
done

# Define and source plugins array
plugins=(
  "marlonrichert/zsh-autocomplete"
  "marlonrichert/zsh-edit"
  "marlonrichert/zsh-hist"
)
for plugin in "${plugins[@]}"; do
  znap source "$plugin"
done

# Source zsh-autosuggestions and set strategy to 'history'
ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source "zsh-users/zsh-autosuggestions"

# Source zsh-syntax-highlighting

znap source "zsh-users/zsh-syntax-highlighting"

# Source LS_COLORS and zcolors
znap source "trapd00r/LS_COLORS"
znap eval "trapd00r/LS_COLORS" "$(whence -a dircolors gdircolors) -b LS_COLORS"

znap source "marlonrichert/zcolors"
znap eval "marlonrichert/zcolors" "zcolors ${(q)LS_COLORS}"

# Bind keys
bindkey "^[q" push-line-or-edit
bindkey -r "^Q" "^[Q"

# Load git plugin
znap eval omz-git 'curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/git/git.plugin.zsh'

#zle -N reverse-yank-pop
export PATH="$HOME/miniforge3/bin:opt/homebrew/anaconda3/bin:$PATH"

# Source prompt
source "$HOME/prompt34"
#znap prompt




