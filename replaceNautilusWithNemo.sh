#!/bin/bash

sudo add-apt-repository ppa:embrosyn/cinnamon
sudo apt install nemo -y

function getLastDeb() {
	local remote=$1
	local url=`wget --spider --no-directories --accept='*.deb*' -r -l 1 "$remote" 2>&1 | grep -oh "http://.*\.deb" | sort -r | head -n 1`
	wget $url
}

getLastDeb http://packages.linuxmint.com/pool/main/m/mint-themes/
getLastDeb http://packages.linuxmint.com/pool/main/m/mint-y-icons/
getLastDeb http://packages.linuxmint.com/pool/main/m/mint-x-icons/

sudo dpkg -i mint*.deb
sudo apt install -f -y

yes | rm mint*.deb

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

gsettings set org.gnome.desktop.background show-desktop-icons false

sudo apt purge nautilus -y
sudo apt autoremove -y
