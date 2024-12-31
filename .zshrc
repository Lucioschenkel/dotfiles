# -------------- History --------------
HISTFILE=$HOME/.history
HISTSIZE=10000000
SAVEHIST=10000000

setopt HIST_IGNORE_SPACE  # Don't save command to history when prefixed by a space
setopt HIST_IGNORE_DUPS   # Share history between sessions

# Search history with up and down keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# -------------- Env vars ------------

# Set edit mode to vi as oposed to emacs
set -o vi

export EDITOR=nvim
export BROWSER="vivaldi"

if [[ "$OSTYPE" == linux* ]]; then
  export PATH=$PATH:/home/linuxbrew/.linuxbrew/opt
fi

# -------------- Aliases -------------

# Git
alias gst="git status"

# Kubernetes
alias k="kubectl"
alias kgp="kubectl get pods"
alias kc="kubectx"
alias kns="kubens"

# Editor
alias v="nvim"

# -------------- Prompt --------------

if [[ "$OSTYPE" == darwin* ]]; then
  fpath+=("$(brew --prefix)/share/zsh/site-functions")
else
  fpath+=($HOME/.zsh/pure)
fi

if [[ -o interactive ]]; then
	autoload -U promptinit; promptinit
	prompt pure
fi

# ------------ Completions --------------

if [ ! -d ~/.zfunc ]; then
  mkdir -p ~/.zfunc
fi

fpath+=~/.zfunc

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

autoload -Uz compinit
compinit -u

zstyle ':completion:*' menu select

# -------------- Sourcing ---------------

if [[ "$OSTYPE" == linux* ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

source <(fzf --zsh)
eval "$(direnv hook zsh)"

fpath+=~/.zfunc; autoload -Uz compinit; compinit
