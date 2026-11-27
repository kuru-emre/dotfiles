# Set XDG base paths
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_BIN_HOME="${XDG_BIN_HOME:-$HOME/.local/bin}"

# Set Zsh and Zflash paths using XDG variables
export MISE_AUTO_ENV=true
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZFLASH_HOME="$XDG_DATA_HOME/zflash"
export ZFLASH_COMPINIT=0

# Update PATH and defaults
export PATH="$XDG_BIN_HOME:$PATH"
export EDITOR="nvim"