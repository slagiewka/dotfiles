# Add brew prefix bin dirs to PATH (packages managed by mise, brew binary not required)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

eval "$("$HOME/.local/bin/mise" activate zsh)"
eval "$(starship init zsh)"

source $HOME/.antidote/antidote.zsh
antidote load

source <(fzf --zsh)
eval "$(zoxide init zsh)"
