#!/bin/bash

# before executing this script
## `$ chmod 755 ./*`

# after executing this script
## execute plugins_rbenv_nodenv.sh script

dir=`dirname $0`

. ${dir}/wsl2/apt_packages.sh

. ${dir}/shared/awscli.sh
. ${dir}/shared/docker.sh
. ${dir}/shared/java.sh
. ${dir}/shared/rbenv_nodenv.sh

sudo apt autoremove -y

. ${dir}/shared/bashrc.sh
