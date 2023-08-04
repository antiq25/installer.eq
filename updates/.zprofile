# Make Tab autocomplete regardless of filename case
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Use the text that has already been typed as the prefix for searching through
# commands (i.e. more intelligent Up/Down behavior)
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Do not autocomplete hidden files unless the pattern explicitly begins with a dot
zstyle ':completion:*' hidden-files false

# Show all autocomplete results at once
zstyle ':completion:*' list-packed

# If there are more than 200 possible completions for a word, ask to show them all
zstyle ':completion:*' list-rows-first

# Show extra file information when completing, like `ls -F` does
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
setopt PRINT_EIGHT_BIT

# Use Alt/Meta + Delete to delete the preceding word
bindkey "\e[3;3~" backward-kill-word


