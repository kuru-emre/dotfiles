# eza (replaces ls)
alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first --git'
alias la='eza -lah --icons --group-directories-first --git'
alias tree='eza --tree --icons'

# bat (replaces cat)
# --style=plain -p makes it behave like cat when you just want text, or remove flags for full line numbers/borders
alias cat='bat --paging=never'
alias catp='bat' # Use 'catp' when you want paging and line numbers

# dust (replaces du)
alias du='dust'

# procs (replaces ps)
alias ps='procs'

# neovim (replaces vim/vi)
alias vim='nvim'
alias vi='nvim'