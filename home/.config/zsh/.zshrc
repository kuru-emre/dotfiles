# Emacs
bindkey -e

# Replicate Debian/Ubuntu standard terminal line bindings
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"

# Setup Ubuntu-style word navigation
bindkey '^[[1;5D' backward-word      # Ctrl+Left
bindkey '^[[1;5C' forward-word       # Ctrl+Right
bindkey '^[[1;3D' backward-word      # Alt+Left
bindkey '^[[1;3C' forward-word       # Alt+Right
bindkey '^H'      backward-kill-word # Ctrl+Backspace
bindkey '^[[3;5~' kill-word          # Ctrl+Delete

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
