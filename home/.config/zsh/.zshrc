
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

# Emacs
bindkey -e

typeset -g -A key
