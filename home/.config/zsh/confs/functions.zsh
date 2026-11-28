_down_or_atuin() {
  # 1. If editing a multi-line command and not on the last line, move cursor down
  if [[ "$RBUFFER" == *$'\n'* ]]; then
    zle down-line-or-history
    return
  fi

  # 2. If browsing older history entries, step forward toward the prompt
  if (( HISTNO < HISTCMD )); then
    zle down-line-or-history
    return
  fi

  # 3. At the bottom of history: launch Atuin search
  if (( $+widgets[atuin-search] )); then
    zle atuin-search
  elif (( $+widgets[_atuin_search_widget] )); then
    zle _atuin_search_widget
  fi
}

zle -N _down_or_atuin

# Bind Down arrow (both normal and application cursor modes)
bindkey '^[[B' _down_or_atuin
bindkey '^[OB' _down_or_atuin

# Override OMZ's prefix-locked Up arrow so pressing Up after dismissing Atuin never gets stuck
bindkey '^[[A' up-line-or-history
bindkey '^[OA' up-line-or-history