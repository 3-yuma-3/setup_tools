#!/bin/bash

dir=`dirname $0`

# vscode
## https://code.visualstudio.com/docs/setup/linux
echo "install vscode"
sudo apt install -y \
  wget \
  gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

. ${dir}/vscode_extensions.sh

# google chrome
## after executed install from downloaded deb files
## https://www.ubuntuupdates.org/ppa/google_chrome
## https://lil.la/archives/4185
## https://isgs-lab.com/447/
echo "install google chrome"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13 7721F63BD38B4796
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt install -y google-chrome-stable

