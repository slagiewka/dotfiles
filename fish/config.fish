set -U fish_greeting

if status is-interactive
    set --prepend PATH /opt/homebrew/bin /opt/homebrew/sbin
    $HOME/.local/bin/mise activate fish | source
    starship init fish | source
    fzf --fish | source
    zoxide init fish | source
end
