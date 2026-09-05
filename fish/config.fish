if status is-interactive
    mise activate fish | source
    starship init fish | source
    fzf --fish | source
    zoxide init fish | source
end
