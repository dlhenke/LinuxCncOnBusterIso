#!/bin/bash
FILE=/etc/apt/sources.dlh.orig
CNCFILE=/etc/apt/sources.list.d/linuxcnc.list
if [ ! -f "$FILE" ]; then
    sudo mv /etc/apt/sources.list /etc/apt/sources.dlh.orig
    sudo echo -e "deb http://deb.debian.org/debian buster main contrib non-free\ndeb-src http://deb.debian.org/debian buster main contrib non-free\ndeb http:$
    sudo apt-get -y update
    sudo apt-get -y upgrade
    sudo apt-get -y install gnome-terminal
    sudo apt-get -y install grub-customizer
    sudo apt-get -y install linux-image-rt-amd64
    sudo apt-get -y install firmware-linux-nonfree firmware-realtek
fi
if [ ! -f "$CNCFILE" ]; then
    echo -e "deb http://linuxcnc.org/ buster base 2.8-rtpreempt">/etc/apt/sources.list.d/linuxcnc.list
    sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-key 3cb9fd148f374fef
    sudo apt-get update
    sudo apt-get -y install linuxcnc-uspace
    sudo apt-get -y install linuxcnc-uspace-dev
fi
