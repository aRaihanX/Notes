iwctl #Wifi setting
    device list #List wifi devices
    station wlan0123 scan #Scans all wifi networks
    station wlan0123 get-networks #Lists all networks
    station wlan0123 connect "Network Name" #Connect to wifi
mount /dev/sda1 /mnt

pacstrap /mnt base base-devel linux linux-firmware linux-headers vim grub networkmanager network-manager-applet
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
vim /etc/locae.gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
locale-gen
echo "Hostname" > /etc/hostname
passwd
systemctl enable NetworkManager
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot
useradd -m "username"
usermod -G wheel "username"
vim /etc/sudoers
su "username"
pacman -S xorg gdm3 xfce4 xfce4-goodies pulseaudio pavucontrol xdg-user-dir
