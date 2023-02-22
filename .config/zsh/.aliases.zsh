#!/bin/zsh

# LS
alias ls='ls -G'
if command -v exa >/dev/null; then
  alias ls='exa'
fi
alias ll='ls -l --icons -g'
alias lla='ll -a --icons'
alias lt='ls -l --tree'
alias lta='lt a'

alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"

alias docker-clean="docker image prune -a && docker container prune && docker volume prune && docker network prune"
alias docker-compose-restart="docker compose down && docker compose up -d"

# Git
alias g='git'