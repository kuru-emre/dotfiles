zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZSH_COMPCACHE"
zstyle ':zim' disable-version-check yes
zstyle ':zim:zmodule' use 'degit'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:*' switch-group '<' '>'
