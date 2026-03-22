#Anntigen configuration
source ~/antigen.zsh
antigen init ~/.antigenrc

export PATH="$HOME/.local/go/bin:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export LESS="-R"

alias cl='clear'

## Jump by word in macos
## bindkey -e
## bindkey "[C" forward-word
## bindkey "[D" backward-word

source <(fzf --zsh)

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

[ -s "$HOME/.deno/env" ] && source "$HOME/.deno/env"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# fvm
export PATH="$HOME/fvm/bin:$PATH"
