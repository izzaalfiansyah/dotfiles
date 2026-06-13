if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q ZELLIJ
        fastfetch
    end
end

starship init fish | source
atuin init fish | source
zoxide init fish | source
fnm env --use-on-cd --shell fish | source

if command -v eza &>/dev/null
    alias rls=$(which ls)
    alias ls="$(which eza) --icons"
end

if command -v bat &>/dev/null
    alias rcat=$(which cat)
    alias cat=$(which bat)
else if command -v batcat &>/dev/null
    alias rcat=$(which cat)
    alias cat=$(which batcat)
end

if command -v zoxide &>/dev/null
    alias rcd="$(which cd)"
    alias cd="z"
end

alias ae="source .venv/bin/activate.fish"
