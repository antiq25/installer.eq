# Clone zsh-snap if znap.zsh doesn't exist
if [ ! -r $HOME/.config/zsh-snap/znap/znap.zsh ]; then
    git clone --depth 1 https://github.com/marlonrichert/zsh-snap.git $HOME/.config/zsh-snap/znap
fi

# Source znap.zsh
source $HOME/.config/zsh-snap/znap/znap.zsh

# Array of files to source
declare -a source_files=(
    "$HOME/.aliases"
    "$HOME/.zshenv"
    "$HOME/.functions"
    "$HOME/.fzf.zsh"
    "$HOME/.lscolors"
)

# Loop through files and source them if they exist
for file in "${source_files[@]}"; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done

# Source zsh-autocomplete
znap source marlonrichert/zsh-autocomplete

# Source zsh-edit
znap source marlonrichert/zsh-edit

# Source zsh-hist
znap source marlonrichert/zsh-hist
bindkey '^[q' push-line-or-edit
bindkey -r '^Q' '^[Q'

znap eval omz-git 'curl -fsSL \
    https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/git/git.plugin.zsh'

# Source zsh-autosuggestions and set strategy to 'history 
ZSH_AUTOSUGGEST_STRATEGY=( history ) 
znap source zsh-users/zsh-autosuggestions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( brackets ) 
znap source zsh-users/zsh-syntax-highlighting

# Source LS_COLORS
znap source trapd00r/LS_COLORS
znap eval trapd00r/LS_COLORS "$(whence -a dircolors gdircolors) -b LS_COLORS"

# Source zcolors
znap source marlonrichert/zcolors
znap eval marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"



#### python evals
# Define _pyenv function and completion
znap function _pyenv pyenv 'eval "$(pyenv init - --no-rehash)"'
compctl -K _pyenv pyenv

# Define _pip_completion function and completion
znap function _pip_completion pip 'eval "$(pip completion --zsh)"'
compctl -K _pip_completion pip

# Define _python_argcomplete function and completion for pipx
znap function _python_argcomplete pipx 'eval "$(register-python-argcomplete pipx)"'
complete -o nospace -o default -o bashdefault -F _python_argcomplete pipx

# Define _pipenv function and completion
znap function _pipenv pipenv 'eval "$(pipenv --completion)"'
compdef _pipenv pipenv
####


# Source starship and initialize for zsh
znap eval starship 'starship init zsh'

# Run fastfetch
fastfetch


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anti/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anti/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/anti/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anti/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

