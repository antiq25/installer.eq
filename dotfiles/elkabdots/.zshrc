# Source zshenv and zprofile if they exist
if [[ -e "${HOME}/.zshenv" ]]; then
  source "${HOME}/.zshenv"
fi

if [[ -e "${HOME}/.zprofile" ]]; then
  source "${HOME}/.zprofile"
fi

# Define variables
ZSH_SNAP_PATH="$HOME/.config/zsh-snap/znap"
GIT_REPO="https://github.com/marlonrichert/zsh-snap.git"
AUTOSUGGESTIONS_PATH="/opt/homebrew/share/zsh-autosuggestions/"
SYNTAX_HIGHLIGHTING_PATH="/opt/homebrew/share/zsh-syntax-highlighting/"
HIGHLIGHTERS_PATH="/opt/homebrew/share/zsh-syntax-highlighting/highlighters"
PLUGINS=(
  "marlonrichert/zsh-autocomplete"
  "marlonrichert/zsh-edit"
  "marlonrichert/zsh-hist"
)
FILES=(
  ".functions"
  ".fzf.zsh"
  ".aliases"
  ".funcs"
	".lscolors"
)

# Source zsh-snap if it doesn't exist
if [[ ! -r "$ZSH_SNAP_PATH/znap.zsh" ]]; then
  git clone --depth 1 "$GIT_REPO" "$ZSH_SNAP_PATH"
fi
source "$ZSH_SNAP_PATH/znap.zsh"

# Source zsh-autosuggestions and zsh-syntax-highlighting
if [ -d "$AUTOSUGGESTIONS_PATH" ]; then
  source "$AUTOSUGGESTIONS_PATH/zsh-autosuggestions.zsh"
else
  source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

if [ -d "$SYNTAX_HIGHLIGHTING_PATH" ]; then
  source "$SYNTAX_HIGHLIGHTING_PATH/zsh-syntax-highlighting.zsh"
  export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="$HIGHLIGHTERS_PATH"
else
  source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="/usr/local/share/zsh-syntax-highlighting/highlighters"
fi

# Source files
for file in "${FILES[@]}"; do
  file="$HOME/$file"
  if [[ -f "$file" ]]; then
    source "$file"
  fi
done

# Source plugins
for plugin in "${PLUGINS[@]}"; do
  znap source "$plugin"
done

# Set autosuggestions strategy to 'history'
ZSH_AUTOSUGGEST_STRATEGY=( history )

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

# Set PATH
export PATH="$HOME/miniforge3/bin:opt/homebrew/anaconda3/bin:$PATH"

# Source prompt
source "$HOME/prompt34"

# Add to PATH
export PATH="/opt/homebrew/opt/libpcap/bin:$PATH"
