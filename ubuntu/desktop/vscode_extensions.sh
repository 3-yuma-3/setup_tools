#!/bin/bash

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

printf "${ESC}[33m%s${ESC}[m\n" 'start install vscode extensions'
code --install-extension eamodio.gitlens
code --install-extension donjayamanne.githistory
code --install-extension pkief.material-icon-theme
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension oderwat.indent-rainbow
code --install-extension mosapride.zenkaku
code --install-extension rebornix.ruby
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension redhat.vscode-yaml
code --install-extension octref.vetur
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension vscjava.vscode-java-pack
code --install-extension Pivotal.vscode-boot-dev-pack
code --install-extension cweijan.vscode-database-client2
