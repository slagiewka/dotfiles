#Anntigen configuration
source ~/antigen.zsh
antigen init ~/.antigenrc

export PATH=$PATH:/Users/shimmy/go/bin:/Users/shimmy/.cargo/bin
export LESS="-R"

alias cl='clear'

## Jump by word in macos
## bindkey -e
## bindkey "[C" forward-word
## bindkey "[D" backward-word

source <(fzf --zsh)
export PATH="/usr/local/opt/node@8/bin:$PATH"

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

