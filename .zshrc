export ZSH_DIR="$HOME/.config/zsh"

if [[ -d $ZSH_DIR ]]; then
  source $ZSH_DIR/config.zsh
fi

if [[ -f "$ZSH_DIR/zsh_variables" ]]; then
  source "$ZSH_DIR/zsh_variables"
fi
