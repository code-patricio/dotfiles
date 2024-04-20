# instalación

loadkeys es
ip link
iwctl --passphrase passphrase station device connect SSID
timedatectl
fdisk -l
cfdisk /dev/sda
*dos*
sda1 512M boot primary bootable
sda2 20G / primary
sda3 430 ~ primary
sda4 ** swap linux82
mkfs.ext2 sd#1
mkfs.ext4 sd#2
mkfs.ext4 sd#3
mkswap sd#4
swapon sd#4
mount sd#2 /mnt
mkdir /mnt/boot
mount sd#1 /mnt/boot
mkdir /mnt/home
mount sd#3 /mnt/home

pacstrap -K /mnt

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
hwclock --systohc

nvim /etc/locale.gen
    en_US
locale.gen

nvim /etc/vconsole.conf
    KEYMAP=es

/etc/hostname
    oizys

mkinitcpio -P

passwd

useradd -m @
passwd @ 

usermod -aG wheel @

nvim /etc/sudoers

umount /dev/fd0
rmmod floppy
/etc/modprobe.d/blacklist.conf > blacklist floppy

grub-install /dev/sd#
grub-mkconfig -o /boot/grub/grub.cfg

## reboot

ip link set DEVICE up
systemctl start NetworkManager.service
nmcli dev wifi connect SSID password passwd


