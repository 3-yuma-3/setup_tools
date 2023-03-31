#!/bin/bash

# before executing this script
## `$ chmod 755 ./*`

# after executing this script
## execute plugins_rbenv_nodenv.sh script

dir=`dirname $0`

. ${dir}/desktop/apt_packages.sh

. ${dir}/desktop/vscode_chrome.sh
. ${dir}/shared/awscli.sh
. ${dir}/shared/docker.sh
. ${dir}/shared/java.sh
. ${dir}/shared/rbenv_nodenv.sh
. ${dir}/shared/minikube_kubectl.sh

sudo apt autoremove -y

. ${dir}/shared/bashrc.sh
. ${dir}/shared/vimrc.sh
