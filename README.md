# LinuxCNCDebianBusterPreempt
Download a Debian iso from debian with bittorrent 
https://cdimage.debian.org/debian-cd/current-live/amd64/bt-hybrid/
install it and then run this script as sudo

chmod 0755 install_linux_cnc_rt_preempt_buster.sh

sudo ./install_linux_cnc_rt_preempt_buster.sh

Execute grub-customizer from menu

add to kernel parameters after quiet splash isolcpus=1 for two cores cpu or isolcpus=1,2,3 for 4 cores or isolcpus=1,2,3,4,5 for 6 cores.

do it in the general configurations tab

Obs: Disable HiperThreading, sound, kvm etc in bios
