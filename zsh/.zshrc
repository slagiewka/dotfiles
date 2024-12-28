#Anntigen configuration
source ~/antigen.zsh
antigen init ~/.antigenrc

export PATH=$PATH:$HOME/go/bin:$HOME/.cargo/bin
export LESS="-R"

alias cl='clear'

## Jump by word in macos
## bindkey -e
## bindkey "[C" forward-word
## bindkey "[D" backward-word

source <(fzf --zsh)

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

. "/home/shimmy/.deno/env"
