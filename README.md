# LinuxCNCDebianBuster Install scripts

Download a Debian iso from debian with bittorrent 
https://cdimage.debian.org/debian-cd/current-live/amd64/bt-hybrid/
install it and then run this script as sudo (you must belong to the sudoers group ).
IN ORDER TO BE IN THE SUDOERS GROUP DO NOT PUT PASSWORD TO ROOT USER WHEN ASKED ON DEBIAN INSTALLATION
it will correct majority of low resolution screens (Depends wich monitor and vga card you have in your computer) 
chmod 0755 *.sh

sudo ./install_linux_cnc_rt_preempt_buster.sh
or
sudo ./install_lcnc_rtai.sh 

to install probe_basic and also probe_basic development

./install_probe_basic.sh ( Do not use sudo when needed the script will ask for sudo password )


Execute grub-customizer from menu

add to kernel parameters after quiet splash isolcpus=1 for two cores cpu or isolcpus=1,2,3 for 4 cores or isolcpus=1,2,3,4,5 for 6 cores.

do it in the general configurations tab

Obs: Disable HiperThreading, sound, kvm etc in bios
