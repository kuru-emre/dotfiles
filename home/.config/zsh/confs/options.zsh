# History location
HISTFILE=$XDG_STATE_HOME/zsh_history

# Starship Transient Prompt (used by olets/zsh-transient-prompt)
TRANSIENT_PROMPT_PROMPT='$(starship prompt --terminal-width="$COLUMNS" --keymap="${KEYMAP:-}" --status="${STARSHIP_CMD_STATUS:-}" --pipestatus="${STARSHIP_PIPE_STATUS[*]:-}" --cmd-duration="${STARSHIP_DURATION:-}" --jobs="$STARSHIP_JOBS_COUNT")'
TRANSIENT_PROMPT_TRANSIENT_PROMPT='$(starship module character)'
