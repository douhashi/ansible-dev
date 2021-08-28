#!/bin/bash
source ./shell/functions.sh

echo
header "START: Post installation"
echo

# gnome-terminal ###############################################################################
notice "Set one dark themes to GNOME terminal"
#bash -c "$(curl -fsSL https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh)"

# asdf #########################################################################################
notice "Install python"
asdf plugin add python
asdf install python latest
asdf global python latest
asdf reshim python

notice "Install ruby"
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
asdf reshim ruby

notice "Install nodejs"
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf reshim nodejs

# node.js ######################################################################################
notice "Install yarn"
npm install -g yarn

# python
notice "Install python packages"
pip install -r pip/requirements.txt

# python
notice "add ${USER} to docker group"
sudo usermod -a -G docker ${USER}


echo
notice "Finished."
echo


