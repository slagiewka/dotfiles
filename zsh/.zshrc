#Anntigen configuration
source /usr/local/share/antigen/antigen.zsh
antigen init ~/.antigenrc

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

export PATH=$PATH:/Users/shimmy/go/bin:/home/shimmy/go/bin
export LESS="-R"

#Git aliasing
alias ga='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gr='git rebase'
alias gri='git rebase -i'
alias gmer='git merge'

alias cl='clear'
