# Prevent duplicate entries in PATH
typeset -U path PATH

if command -v mise &> /dev/null; then
  eval "$(mise activate zsh --shims)"
fi

path=(
  "$XDG_BIN_HOME"
  "$PUB_CACHE/bin"
  "$CARGO_HOME/bin"
  "$GOPATH/bin"
  $path
)
export PATH

# SSH Agent socket (imported into systemd/GUI apps by niri-session)
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"