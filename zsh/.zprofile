if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
fi

eval "$("$HOME/.local/bin/mise" activate zsh --shims)"
