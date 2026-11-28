ZFLASH_HOME="$XDG_DATA_HOME/zflash"
ZFLASH_SPEC="$ZDOTDIR/confs/zflash.zsh"
ZFLASH_COMPINIT=0

# Auto-clone zflash on first run if missing
if [[ ! -f "$ZFLASH_HOME/zflash.zsh" ]]; then
  mkdir -p "${ZFLASH_HOME:h}"
  git clone --depth=1 https://github.com "$ZFLASH_HOME"
fi

# Source zflash and build/load your spec
source "$ZFLASH_HOME/zflash.zsh"
zflash boot "$ZFLASH_SPEC"
