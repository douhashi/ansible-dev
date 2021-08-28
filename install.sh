#!/bin/bash
source ./shell/functions.sh

BASE_DIR=`pwd`

echo
header "START: Installation process"
echo

# run playbook ###############################################################################
notice "Run playbook"
ansible-playbook site.yml

echo
notice "Finished."
echo
