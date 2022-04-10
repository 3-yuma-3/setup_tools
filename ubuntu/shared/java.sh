#!/bin/bash

# SDKMAN!
## https://sdkman.io/install
echo "install SDKMAN!"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# openjdk
## https://sdkman.io/jdks
echo "install openjdk"
sdk install java

# gradle
## https://gradle.org/install/
echo "install gradle"
sdk install gradle

# springboot
## https://spring.pleiades.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing.cli.sdkman
## https://spring.pleiades.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing.cli.completion
echo "install spring boot"
sdk install springboot
. ~/.sdkman/candidates/springboot/current/shell-completion/bash/spring

