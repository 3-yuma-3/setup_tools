#!/bin/bash

ESC=$(printf '\033') # \e や \x1b または $'\e' は使用しない

# docker, compose
## https://docs.docker.com/engine/install/ubuntu/
## https://docs.docker.com/compose/install/
printf "${ESC}[33m%s${ESC}[m\n" 'start install docker, docker-compose'
sudo apt update
sudo apt install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-compose-plugin
docker compose version

# minikube
## https://minikube.sigs.k8s.io/docs/start/
printf "${ESC}[33m%s${ESC}[m\n" 'start install minikube'
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# kubectl
printf "${ESC}[33m%s${ESC}[m\n" 'start install kubectl'
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client

# helm
## https://helm.sh/ja/docs/intro/install/
printf "${ESC}[33m%s${ESC}[m\n" 'start install helm'
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
