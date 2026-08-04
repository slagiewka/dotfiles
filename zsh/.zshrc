eval "$("$HOME/.local/bin/mise" activate zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# Antidote plugin manager
source ~/.antidote/antidote.zsh
source <(antidote init)

antidote bundle getantidote/use-omz
antidote bundle ohmyzsh/ohmyzsh path:lib
antidote bundle ohmyzsh/ohmyzsh path:plugins/git
antidote bundle ohmyzsh/ohmyzsh path:plugins/sudo
antidote bundle zsh-users/zsh-autosuggestions

#Syntax highlighting must be the last bundle
antidote bundle zsh-users/zsh-syntax-highlighting

source <(fzf --zsh)
