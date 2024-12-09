# History
HISTFILE=$HOME/.history
HISTSIZE=10000000
SAVEHIST=10000000

# Search history with up and down keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Load aliases
source ~/.zsh_aliases

# Pure prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

# fzf integration
source <(fzf --zsh)

