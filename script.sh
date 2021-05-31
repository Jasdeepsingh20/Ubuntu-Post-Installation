#!/bin/bash

echo "--------------------------------"
echo "-------INSTALLING PACKAGES------"
echo "--------------------------------"

# installing packages from apt package manager
apt install git gnome-tweaks flameshot snapd vlc telegram-desktop curl timeshift gcc g++ scrcpy -y


# virtual box
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-6.1

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


# discord
wget https://dl.discordapp.net/apps/linux/0.0.14/discord-0.0.14.deb
sudo dpkg -i discord-0.0.14.deb

# code
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
wget https://az764295.vo.msecnd.net/stable/054a9295330880ed74ceaedda236253b4f39a335/code_1.56.2-1620838498_amd64.deb
sudo dpkg -i code_1.56.2-1620838498_amd64.deb
# spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client
# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text
# simplenote
wget https://github.com/Automattic/simplenote-electron/releases/download/v2.11.0/Simplenote-linux-2.11.0-amd64.deb
sudo dpkg -i Simplenote-linux-2.11.0-amd64.deb

# Node.js v14.x:
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs

