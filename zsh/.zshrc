eval "$(mise activate zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

#Anntigen configuration
source ~/antigen.zsh
antigen init ~/.antigenrc

source <(fzf --zsh)
