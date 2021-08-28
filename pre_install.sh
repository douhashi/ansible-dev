#!/bin/bash
source ./shell/functions.sh

echo
header "START: Pre-installation process"
echo

# install ansible ############################################################################
notice "* Install ansible"
sudo pacman -S ansible --noconfirm


# Ansible galaxy #############################################################################
notice "* Install roles via ansible-galaxy"
ansible-galaxy install -r requirements.yml

echo
notice "Finished."
echo
