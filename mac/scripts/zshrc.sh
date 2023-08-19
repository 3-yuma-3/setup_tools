#!/bin/zsh

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

# customize prompt
## https://qiita.com/caad1229/items/6d71d84933c8a87af0c4
## https://gist.github.com/caad1229/f6c64ef41d58f15f5148
printf "${ESC}[33m%s${ESC}[m\n" 'start zsh setting'

# git alias
cat - << EOS >> ~/.zshrc

# alias
alias gs='git status'
alias ga='git add'
alias gf='git fetch'
alias gcm='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gg='git grep'
EOS
