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
zflash load $ZDOTDIR/confs/options.zsh            # your own files work like plugins
zflash defer ohmyzsh/ohmyzsh

# prompt: run `<tool> init zsh` once, at build time, instead of every start
zflash eval 'lig init zsh pre'
zflash eval 'starship init zsh'

# ── after the first prompt ───────────────────────────────────────────────
zflash eval --defer 'zsh-patina activate'
zflash eval --defer 'mise activate zsh'
zflash eval --defer 'atuin init zsh --disable-up-arrow'
zflash eval --defer 'zoxide init zsh --cmd cd'

zflash defer olets/zsh-transient-prompt
zflash defer zsh-users/zsh-

# your aliases and functions last, so they win over plugin aliases
# completions only
zflash defer $ZDOTDIR/confs/functions.zsh
zflash defer $ZDOTDIR/confs/aliases.zsh

# Make sure lig post hook is last
zflash eval --defer 'lig init zsh post'
