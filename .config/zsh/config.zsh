source $ZSH_DIR/themes/catppuccin-mocha.zsh
autoload -U compinit && compinit

ANTIDOTE_PATH="$HOME/.antidote/antidote.zsh"
if [[ -f "$ANTIDOTE_PATH" ]]; then
  source "$ANTIDOTE_PATH"
  antidote load "$ZSH_DIR/zsh_plugins"
fi

if [[ -z "$ZELLIJ" && -z "$ZELLIJ_SESSION_NAME" ]]; then
  fastfetch
fi

eval "$(starship init zsh)"
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"

if command -v eza &> /dev/null; then
  alias rls="$(which ls)"
  alias ls="$(which eza) --icons"
fi

if command -v bat &> /dev/null; then
  alias rcat="$(which cat)"
  alias cat="$(which bat)"
elif command -v batcat &> /dev/null; then
  alias rcat="$(which cat)"
  alias cat="$(which batcat)"
fi

if command -v zoxide &> /dev/null; then
  alias rcd="$(which cd)"
  alias cd="z"
fi

alias ae="source .venv/bin/activate"
