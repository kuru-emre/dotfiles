# Emacs
bindkey -e

bindkey '^[[1;5D' backward-word      # Ctrl + Left
bindkey '^[[1;5C' forward-word       # Ctrl + Right
bindkey '^[[1;3D' backward-word      # Alt + Left
bindkey '^[[1;3C' forward-word       # Alt + Right

# Custom completions
fpath=($ZDOTDIR/completions $fpath)

# 2. Ensure the cache directory actually exists (prevents errors on new setups)
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/zsh"

# Options and aliases
source $ZDOTDIR/confs/aliases.zsh
source $ZDOTDIR/confs/options.zsh
source $ZDOTDIR/confs/zstyle.zsh
source $ZDOTDIR/confs/zim.zsh

# Compinit
autoload -Uz compinit
compinit -d "$ZSH_COMPDUMP"
eval "$(/home/kurue/.local/bin/mise activate zsh)"
