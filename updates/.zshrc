# Setup Znap
if [ ! -r $HOME/.config/zsh-snap/znap/znap.zsh ]; then           
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git $HOME/.config/zsh-snap/znap 
fi  

source $HOME/.config/zsh-snap/znap/znap.zsh

# Array of files to source
declare -a source_files=("$HOME/.aliases" "$HOME/.zshenv" "$HOME/.functions" "~/.fzf.zsh" "$HOME/.lscolors"  "$HOME/.vulkanpaths")

# Loop through files and source them if they exist
for file in "${source_files[@]}"; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done



##
# Does your shell feels slow to start? `znap prompt` reduces the time between
# opening your terminal and seeing your prompt to just 15 - 40 ms!
#


# `znap prompt` also supports Oh-My-Zsh themes. Just make sure you load the
# required libs first:



# Using your own custom prompt? After initializing the prompt, just call
# `znap prompt` without arguments to get it to show:


##
# Load your plugins with `znap source`.
#
znap source marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-edit


plugins=(
    macos
    git
)


# No special syntax is needed to configure plugins. Just use normal Zsh
# statements:

znap source marlonrichert/zsh-hist
bindkey '^[q' push-line-or-edit
bindkey -r '^Q' '^[Q'

ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source zsh-users/zsh-autosuggestions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting


##
# Cache the output of slow commands with `znap eval`.
#

# If the first arg is a repo, then the command will run inside it. Plus,
# whenever you update a repo with `znap pull`, its eval cache gets regenerated
# automatically.
znap eval trapd00r/LS_COLORS "$( whence -a dircolors gdircolors ) -b LS_COLORS"

# The cache gets regenerated, too, when the eval command has changed. For
# example, here we include a variable. So, the cache gets invalidated whenever
# this variable has changed.
znap source marlonrichert/zcolors
znap eval   marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"

znap eval omz-git 'curl -fsSL \
    https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/git/git.plugin.zsh'



znap function _pyenv pyenv              'eval "$( pyenv init - --no-rehash )"'
compctl -K    _pyenv pyenv

znap function _pip_completion pip       'eval "$( pip completion --zsh )"'
compctl -K    _pip_completion pip

znap function _python_argcomplete pipx  'eval "$( register-python-argcomplete pipx  )"'
complete -o nospace -o default -o bashdefault \
           -F _python_argcomplete pipx

znap function _pipenv pipenv            'eval "$( pipenv --completion )"'
compdef       _pipenv pipenv

znap eval starship 'starship init zsh' 

fastfetch

