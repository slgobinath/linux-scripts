#!/bin/bash

echo "Add third-party PPAs"
sudo add-apt-repository ppa:webupd8team/terminix -y

echo "Update the repositories"
sudo apt update

echo "Install Snap"
sudo apt install snapd

echo "Install Git"
sudo apt install git

echo "Install Tilix terminal"
# sudo add-apt-repository ppa:webupd8team/terminix
# sudo apt update
sudo apt install tilix

echo "Install Vim editor"
sudo apt install vim

echo "Install tree command"
sudo apt install tree

echo "Install Visual Studio Code"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

echo "Install Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt-get install sublime-text

echo "Install Python modules"
sudo apt install python3-pip python3-dev python-virtualenv python3-setuptools

sudo pip3 install pylint

echo "Install magicwormhole"
sudo snap install wormhole

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

echo "Install synapse"
sudo apt install synapse

echo "Install SMPlayer"
sudo add-apt-repository ppa:rvm/smplayer 
sudo apt update 
sudo apt install smplayer smplayer-themes smplayer-skins

echo "Install VLC"
sudo apt install vlc browser-plugin-vl

# Install build tools
echo "Install cmake"
sudo apt install cmake

# Install download manager
echo "Install aria2"
sudo apt install aria2

echo "Install uGet Download Manager"
sudo add-apt-repository ppa:plushuang-tw/uget-stable
sudo apt update
sudo apt install uget

echo "Install uGet Chrome Wrapper"
sudo add-apt-repository ppa:slgobinath/uget-chrome-wrapper
sudo apt update
sudo apt install uget-chrome-wrapper

echo "Install shutter"
sudo add-apt-repository ppa:shutter/ppa
sudo apt update && sudo apt install shutter
# Missing dependency in Linux Mint
# @See https://itsfoss.com/shutter-edit-button-disabled/
sudo apt install libgoo-canvas-perl