#!/bin/bash

# customize prompt
## https://qiita.com/caad1229/items/6d71d84933c8a87af0c4
## https://gist.github.com/caad1229/f6c64ef41d58f15f5148
cat - << EOS >> ~/.bashrc

# personal settings
function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
function promps {
  # 色は気分で変えたいかもしれないので変数宣言しておく
  local BLUE="\[\e[1;34m\]"
  local RED="\[\e[1;31m\]"
  local GREEN="\[\e[1;32m\]"
  local WHITE="\[\e[00m\]"
  local GRAY="\[\e[1;37m\]"

  case $TERM in
    xterm*) TITLEBAR='\[\e]0;\W\007\]';;
    *) TITLEBAR="";;
  esac
  local BASE="\u@\h"
  # PS1="[\$(date +%H:%M:%S)] \${TITLEBAR}\${GREEN}\u:\${BLUE}\W\${GREEN}\\\$(parse_git_branch)\${BLUE}\\$\${WHITE} "
    # userだけを表示したい場合
  PS1="[\$(date +%H:%M:%S)] \${GREEN}\u@\${GREEN}\h\${GREEN}\u:\${BLUE}\w\${GREEN}\\\$(parse_git_branch)\${BLUE}\\$\${WHITE} "
    # user@host, フルパスを表示したい場合
    # カレントディレクトリだけを表示する場合は大文字W
}
promps
EOS

# git alias
cat - << EOS >> ~/.bashrc

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

