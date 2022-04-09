#!/bin/bash

## https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/getting-started-install.html
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

dir=`dirname $0`

gpg --import ${dir}/awscli_public_key_file
curl -o awscliv2.sig https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip.sig
gpg --verify awscliv2.sig awscliv2.zip
unzip awscliv2.zip
sudo ./aws/install
aws --version
