ZFLASH_DIR="$XDG_DATA_HOME/zflash"
ZFLASH_SPEC="$ZDOTDIR/confs/zflash.zsh"

# Auto-clone zflash on first run if missing
if [[ ! -f "$ZFLASH_DIR/zflash.zsh" ]]; then
  mkdir -p "${ZFLASH_DIR:h}"
  git clone --depth=1 https://github.com "$ZFLASH_DIR"
fi

# Source zflash and build/load your spec
source "$ZFLASH_DIR/zflash.zsh"
zflash boot "$ZFLASH_SPEC"