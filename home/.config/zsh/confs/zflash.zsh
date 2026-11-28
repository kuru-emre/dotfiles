# zflash spec — the one ordered list of everything your shell loads.
# Evaluated only by `zflash build`, never at shell start. `zflash help`.
#
#   zflash load  <repo|file> [path ...]   source before the first prompt
#   zflash defer <repo|file> [path ...]   source after the first prompt
#   zflash fpath <repo|dir>  [path ...]   completions only
#   zflash eval [--defer] '<cmd>'         run at build time, inline the output
#
# <repo> is owner/repo, a git URL, or a local path (a directory, or one of your
# own rc files). Completion dirs from every line are hoisted above compinit,
# which runs right after the first prompt; earlier compdef calls are queued.

# ── before the first prompt ──────────────────────────────────────────────
zflash load $ZDOTDIR/confs/options.zsh

# prompt: run `<tool> init zsh` once, at build time, instead of every start
zflash eval 'lig init zsh pre'
zflash eval 'starship init zsh --print-full-init | grep -v "^PROMPT2="'
zflash eval 'print -r -- "PROMPT2=${(q+)$(starship prompt --continuation)}"'
zflash load olets/zsh-transient-prompt

# ── after the first prompt ───────────────────────────────────────────────
# Only load the specific OMZ pieces
zflash defer ohmyzsh/ohmyzsh lib/history.zsh lib/key-bindings.zsh

zflash eval --defer 'mise activate zsh'
zflash eval --defer 'atuin init zsh --disable-up-arrow'
zflash eval --defer 'zoxide init zsh --cmd cd'

# Autosuggestions first, then zsh-patina syntax highlighter
zflash defer zsh-users/zsh-autosuggestions
zflash eval --defer 'zsh-patina activate'

# Aliases, functions last so they override plugin defaults
zflash defer $ZDOTDIR/confs/functions.zsh
zflash defer $ZDOTDIR/confs/aliases.zsh

# Lig post hook is always dead last
zflash eval --defer 'lig init zsh post'
