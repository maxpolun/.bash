# This file lists custom shell aliases

alias ls='ls -h -p'
alias ll="ls -lv --group-directories-first"
alias more='less'
alias be='bundle exec'

# --- GIT ALIASES ---
alias gpd='git pull develop'
alias gs='git status --short'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gall='git add --all && git status --short'

alias ssh-home='ssh maxp@maxpolun.ddns.net -o ServerAliveInterval=30'
