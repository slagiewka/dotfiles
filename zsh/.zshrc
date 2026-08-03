eval "$("$HOME/.local/bin/mise" activate zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# Antigen configuration
if [[ -r ~/.local/share/antigen/antigen.zsh ]]; then
  source ~/.local/share/antigen/antigen.zsh
else
  source ~/antigen.zsh
fi
antigen init ~/.antigenrc

source <(fzf --zsh)
