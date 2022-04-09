#!/bin/bash

# rbenv
## https://github.com/rbenv/rbenv#basic-github-checkout
## https://qiita.com/techno-tanoC/items/551e7cad3fef15ca42bf
echo "install rbenv"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
~/.rbenv/bin/rbenv init

# nodenv
## https://github.com/nodenv/nodenv#basic-github-checkout
echo "install nodenv"
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(nodenv init -)"' >> ~/.bashrc
~/.nodenv/bin/nodenv init

## to use yarn
# nodenv install hogehoge
# nodenv local hogehoge
# npm install -global yarn
# yarn -v
# yarn

