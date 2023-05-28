#!/bin/bash

# before executing this script
## `$ chmod 755 ./*`

# after executing this script
## execute plugins_rbenv_nodenv.sh script

dir=`dirname $0`

# 標準出力に色付け
## https://qiita.com/ko1nksm/items/095bdb8f0eca6d327233
ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない
printf "${ESC}[33m%s${ESC}[m\n" 'start ubuntu desktop setup'

. ${dir}/desktop/apt_packages.sh

. ${dir}/desktop/vscode_chrome.sh
. ${dir}/shared/awscli.sh
. ${dir}/shared/container.sh
. ${dir}/shared/java.sh
. ${dir}/shared/rbenv_nodenv.sh

sudo apt autoremove -y

. ${dir}/shared/bashrc.sh
. ${dir}/shared/vimrc.sh
