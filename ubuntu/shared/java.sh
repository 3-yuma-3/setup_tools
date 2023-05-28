#!/bin/bash

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

# SDKMAN!
## https://sdkman.io/install
printf "${ESC}[33m%s${ESC}[m\n" 'start install SDKMAN!'
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# openjdk
## https://sdkman.io/jdks
printf "${ESC}[33m%s${ESC}[m\n" 'start install openjdk'
sdk install java

# gradle
## https://gradle.org/install/
printf "${ESC}[33m%s${ESC}[m\n" 'start install gradle'
sdk install gradle

# springboot
## https://spring.pleiades.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing.cli.sdkman
## https://spring.pleiades.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing.cli.completion
printf "${ESC}[33m%s${ESC}[m\n" 'start install spring boot'
sdk install springboot
. ~/.sdkman/candidates/springboot/current/shell-completion/bash/spring
