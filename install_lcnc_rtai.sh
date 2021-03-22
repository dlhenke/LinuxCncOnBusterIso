#!/bin/bash
# chmod this file to 0755
# chmod 0755 install_lcnc_rtai.sh
# sudo ./install_lcnc_rtai.sh
FILE=/etc/apt/sources.orig
CNCFILE=/etc/apt/sources.list.d/linuxcnc.list
if [ ! -f "$FILE" ]; then
     sudo mv /etc/apt/sources.list "$FILE"
fi
    sudo echo -e "deb http://deb.debian.org/debian buster main contrib non-free" > /etc/apt/sources.list
    sudo echo -e "deb-src http://deb.debian.org/debian buster main contrib non-free" >> /etc/apt/sources.list
    sudo echo -e "deb http://deb.debian.org/debian buster-updates main contrib non-free" >> /etc/apt/sources.list
    sudo echo -e "deb-src http://deb.debian.org/debian buster-updates main contrib non-free" >> /etc/apt/sources.list
    sudo echo -e "deb http://security.debian.org/debian-security/ buster/updates main contrib non-free" >> /etc/apt/sources.list
    sudo echo -e "deb-src http://security.debian.org/debian-security/ buster/updates main contrib non-free" >> /etc/apt/sources.list
    sudo apt-get -y update
    sudo apt-get -y upgrade
    sudo apt-get -y install gnome-terminal
    sudo apt-get -y install grub-customizer    
    sudo apt-get -y install firmware-linux-nonfree firmware-realtek

if [ ! -f "$CNCFILE" ]; then
    
    sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-key 3cb9fd148f374fef
    sudo echo -e "deb http://linuxcnc.org/ buster base 2.8-rt">/etc/apt/sources.list.d/linuxcnc.list
    sudo apt-get update
    sudo apt-get -y install linux-image-4.14.174-rtai-amd64
    sudo apt-get -y install rtai-modules-4.14.174
    sudo apt-get -y install linuxcnc
fi

sudo apt remove -y xterm xiterm+thai mlterm kasumi
