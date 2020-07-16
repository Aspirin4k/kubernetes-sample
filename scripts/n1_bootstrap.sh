#!/bin/bash

sudo apt update

sudo apt -y install ansible sshpass

cat <<EOT > ~/.ansible.cfg
[defaults]
host_key_checking = false
EOT