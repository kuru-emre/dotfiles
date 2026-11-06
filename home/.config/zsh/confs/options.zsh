# ZimFW
ZIM_HOME=$XDG_DATA_HOME/zim
ZIM_CONFIG_FILE=$ZDOTDIR/zconfig

# History location
HISTFILE=$XDG_STATE_HOME/zsh_history

# ZSH cache
ZSH_COMPDUMP="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
ZSH_COMPCACHE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompcache"

# Transient prompt
TRANSIENT_PROMPT_PROMPT='$(starship prompt --terminal-width="$COLUMNS" --keymap="${KEYMAP:-}" --status="${STARSHIP_CMD_STATUS:-}" --pipestatus="${STARSHIP_PIPE_STATUS[*]:-}" --cmd-duration="${STARSHIP_DURATION:-}" --jobs="$STARSHIP_JOBS_COUNT")'
TRANSIENT_PROMPT_TRANSIENT_PROMPT='$(starship module character)'
