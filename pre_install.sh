#!/bin/bash
source ./shell/functions.sh

BASE_DIR=`pwd`

echo
header "START: Pre-installation process"
echo

# yay-bin ####################################################################################
notice "* Install yay-bin"
git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
cd /tmp/yay-bin
makepkg -si --noconfirm
cd ..
rm -rf yay-bin
cd ${BASE_DIR}

# install ansible ############################################################################
notice "* Install ansible"
yay -S ansible --noconfirm


# Ansible galaxy #############################################################################
notice "* Install roles via ansible-galaxy"
ansible-galaxy install -r requirements.yml

echo
notice "Finished."
echo
