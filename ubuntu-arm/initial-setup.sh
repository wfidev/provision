#!/bin/bash

# Move into an installation directory
#
mkdir ~/InitialProvision
pushd .
cd ~/InitialProvision

# Set Git's user and email attributes so that code can be checked in if needed
#
git config --global user.name paul
git config --global user.email dev@wfi

# Next DNS - this is an interactive script so it goes first
#
sh -c "$(curl -sL https://nextdns.io/install)"
nextdns start

# Install the app frameworks. We'll use flatpak as our preferred installer.
#
sudo apt install snapd -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Set up a default coding environment
#
mkdir ~/Code
sudo apt install python3.10-venv -y
python3 -m venv 2305
pushd .
cd ~/Code
git clone https://github.com/wfidev/alias
cp alias/.bash_aliases ~
popd
echo "Restart bash to import new aliases"


