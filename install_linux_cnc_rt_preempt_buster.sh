#!/bin/bash
# chmod this file to 0755
# chmod 0755 install_linux_cnc_rt_preempt_buster.sh
# sudo ./install_linux_cnc_rt_preempt_buster.sh
FILE=/etc/apt/sources.dlh.orig
CNCFILE=/etc/apt/sources.list.d/linuxcnc.list
if [ ! -f "$FILE" ]; then
    sudo mv /etc/apt/sources.list /etc/apt/sources.dlh.orig
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

sudo apt remove -y xterm xiterm+thai mlterm kasumi
