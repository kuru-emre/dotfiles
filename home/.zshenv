# Set XDG base paths
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_BIN_HOME="${XDG_BIN_HOME:-$HOME/.local/bin}"

# 2. Relocate Zsh configuration files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# 3. Core System Defaults
export EDITOR="nvim"
export VISUAL="$EDITOR"
export PAGER="moor"

# 4. De-clutter $HOME (XDG Overrides for CLI tools & languages)
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export MISE_AUTO_ENV=true
