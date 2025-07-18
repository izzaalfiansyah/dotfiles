if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q ZELLIJ
        fastfetch
    end
end

starship init fish | source
fnm env --use-on-cd --shell fish | source

alias ff=fastfetch
alias zq="zellij kill-all-sessions"
