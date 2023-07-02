#!/bin/bash

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

# docker, compose
## https://www.kali.org/docs/containers/installing-docker-on-kali/
printf "${ESC}[33m%s${ESC}[m\n" 'start install docker, docker-compose'
sudo apt update
sudo apt install -y \
  docker.io
curl -fsSL https://download.docker.com/linux/debian/gpg |
  sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
# sudo apt update
# sudo apt install -y \
#   docker-ce \
#   docker-ce-cli \
#   containerd.io \
#   docker-compose-plugin
# docker compose version
