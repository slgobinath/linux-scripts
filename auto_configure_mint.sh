#!/bin/bash

echo "Add third-party PPAs"
sudo add-apt-repository ppa:webupd8team/terminix -y

echo "Update the repositories"
sudo apt update

echo "Install Git"
sudo apt install git

echo "Install Tilix terminal"
# sudo add-apt-repository ppa:webupd8team/terminix
# sudo apt update
sudo apt install tilix

echo "Install Vim editor"
sudo apt install vim

echo "Install Visual Studio Code"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

echo "Install Python modules"
sudo apt install python3-pip python3-dev python-virtualenv

echo "Install themes"
# Install capitaine-cursors
# @Source: https://github.com/keeferrourke/capitaine-cursors
mkdir /tmp/capitaine-cursors
git clone https://github.com/keeferrourke/capitaine-cursors.git /tmp/capitaine-cursors
cp -pr /tmp/capitaine-cursors/dist/ ~/.icons/capitaine-cursors
rm -r /tmp/capitaine-cursors -f

echo "Install Vim plugins"
# pathogen.vim
# @Source https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/ervandew/supertab.git
