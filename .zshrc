source $HOME/.antidote/antidote.zsh

antidote load

if [[ -z "$ZELLIJ" && -z "$ZELLIJ_SESSION_NAME" ]]; then
  fastfetch
fi

eval "$(starship init zsh)"
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"

alias ls="eza --icons"
alias cd="z"
alias ae="source .venv/bin/activate"
