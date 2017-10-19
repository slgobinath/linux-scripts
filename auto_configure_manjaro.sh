#!/bin/bash

echo "Install Tilix terminal"
yaourt -S tilix --noconfirm

echo "Install Visual Studio Code"
yaourt -S visual-studio-code --noconfirm

echo "Install Python modules"
sudo apt install python3-pip python3-dev python-virtualenv python3-setuptools

sudo pip3 install pylint