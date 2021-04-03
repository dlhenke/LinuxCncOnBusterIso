# LinuxCNCDebianBuster Install scripts

Download a Debian iso from debian with non-free firmwares

https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/

install it and then run this script as sudo (you must belong to the sudoers group ).

IN ORDER TO BE IN THE SUDOERS GROUP DO NOT FILL PASSWORD ON ROOT ACCOUNT 

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
