eval "$("$HOME/.local/bin/mise" activate zsh)"
eval "$(starship init zsh)"

source $HOME/.antidote/antidote.zsh
antidote load

source <(fzf --zsh)
