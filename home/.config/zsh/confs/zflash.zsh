# ── before the first prompt ──────────────────────────────────────────────
zflash load $ZDOTDIR/confs/options.zsh

# prompt: run `<tool> init zsh` once, at build time, instead of every start
zflash eval 'lig init zsh pre'
zflash eval 'starship init zsh --print-full-init | grep -v "^PROMPT2="'
zflash eval 'print -r -- "PROMPT2=${(q+)$(starship prompt --continuation)}"'
zflash load olets/zsh-transient-prompt

# ── after the first prompt ───────────────────────────────────────────────
# Only load the specific OMZ pieces you use (or remove if unused)
# zflash defer ohmyzsh/ohmyzsh lib/git.zsh plugins/sudo

zflash eval --defer 'mise activate zsh'
zflash eval --defer 'atuin init zsh --disable-up-arrow'
zflash eval --defer 'zoxide init zsh --cmd cd'

# Autosuggestions first, then zsh-patina syntax highlighter
zflash defer zsh-users/zsh-autosuggestions
zflash eval --defer 'zsh-patina activate'

# Aliases, functions last so they override plugin defaults
zflash defer $ZDOTDIR/confs/functions.zsh
zflash defer $ZDOTDIR/confs/aliases.zsh

# Make sure lig post hook is always dead last
zflash eval --defer 'lig init zsh post'
