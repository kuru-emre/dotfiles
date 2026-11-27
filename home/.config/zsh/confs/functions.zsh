_down_or_atuin() {
  if (( HISTNO < HISTCMD )); then
    zle down-line-or-history
  else
    zle _atuin_search_widget
  fi
}

zle -N _down_or_atuin

bindkey '^[[B' _down_or_atuin
bindkey '^[OB' _down_or_atuin
