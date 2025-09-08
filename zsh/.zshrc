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

. $HOME/".deno/env"

# bun completions
[ -s "/Users/shimmy/.bun/_bun" ] && source "/Users/shimmy/.bun/_bun"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

