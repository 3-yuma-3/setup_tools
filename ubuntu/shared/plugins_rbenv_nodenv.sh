#!/bin/bash

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

# wait for setup.sh complete
# execute following commands
## `$ exec bash -l`
## `$ chmod 755 plugins_rbenv_nodenv.sh``

# after executing this script
## `$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash`
## `$ curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash`

# ruby-build
## https://github.com/rbenv/ruby-build#readme
printf "${ESC}[33m%s${ESC}[m\n" 'start install ruby-build'
mkdir -p $(rbenv root)/plugins
git clone https://github.com/rbenv/ruby-build.git $(rbenv root)/plugins/ruby-build

# rbenv-update
## https://github.com/rkh/rbenv-update
printf "${ESC}[33m%s${ESC}[m\n" 'start install rbenv-update'
mkdir -p $(rbenv root)/plugins
git clone https://github.com/rkh/rbenv-update.git $(rbenv root)/plugins/rbenv-update

# node-buld
## https://github.com/nodenv/node-build#readme
printf "${ESC}[33m%s${ESC}[m\n" 'start install node-build'
mkdir -p $(nodenv root)/plugins
git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build

# nodenv-update
## https://github.com/nodenv/nodenv-update
printf "${ESC}[33m%s${ESC}[m\n" 'start install nodenv-update'
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/nodenv-update.git $(nodenv root)/plugins/nodenv-update
