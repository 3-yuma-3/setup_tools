#!/bin/zsh

# before executing this script
## `$ chmod 755 ./*`

dir=`dirname $0`

# 標準出力に色付け
## https://qiita.com/ko1nksm/items/095bdb8f0eca6d327233
ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない
printf "${ESC}[33m%s${ESC}[m\n" 'start wsl ubuntu setup'

. ${dir}/scripts/zshrc.sh
. ${dir}/scripts/vimrc.sh
