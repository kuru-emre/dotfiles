# Prevent duplicate entries in PATH
typeset -U path PATH

# Mise Shims
eval "$(mise activate zsh --shims)"

path=(
  "$XDG_BIN_HOME"
  "$PUB_CACHE/bin"
  "$CARGO_HOME/bin"
  "$GOPATH/bin"
  $path
)

export PATH