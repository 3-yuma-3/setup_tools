#!/bin/bash

# before executing this script
## `$ chmod 755 ./*`

# after executing this script
## execute plugins_rbenv_nodenv.sh script

dir=`dirname $0`

. ${dir}/apt_packages.sh

. ${dir}/awscli.sh
. ${dir}/docker.sh
. ${dir}/java.sh
. ${dir}/rbenv_nodenv.sh

sudo apt autoremove -y

. ${dir}/bashrc.sh
