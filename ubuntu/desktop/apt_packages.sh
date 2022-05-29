#!/bin/bash

sudo apt update
sudo apt upgrade -y

# disable ipv6
echo "net.ipv6.conf.all.disable_ipv6=1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6=1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# apt tools
echo "install apt tools"
sudo apt install -y \
  gcc \
  make \
  perl \
  curl \
  git \
  vim \
  tig \
  android-tools-adb \
  scrcpy \
  openssh-server \
  graphviz
