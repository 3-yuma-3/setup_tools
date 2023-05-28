#!/bin/bash

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

printf "${ESC}[33m%s${ESC}[m\n" 'start apt update && apt upgrade -y'

sudo apt update
sudo apt upgrade -y

# disable ipv6
printf "${ESC}[33m%s${ESC}[m\n" 'disable ipv6'
echo "net.ipv6.conf.all.disable_ipv6=1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6=1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# apt tools
printf "${ESC}[33m%s${ESC}[m\n" 'install apt tools'
sudo apt install -y \
  tig \
  unzip \
  zip \
  graphviz

# https://github.com/rbenv/ruby-build/wiki#ubuntudebianmint
printf "${ESC}[33m%s${ESC}[m\n" 'install apt tools for ruby-build'
sudo apt install -y \
  autoconf \
  bison \
  patch \
  build-essential \
  rustc \
  libssl-dev \
  libyaml-dev \
  libreadline6-dev \
  zlib1g-dev \
  libgmp-dev \
  libncurses5-dev \
  libffi-dev \
  libgdbm6 \
  libgdbm-dev \
  libdb-dev \
  uuid-dev
