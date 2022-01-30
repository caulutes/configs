#!/bin/bash

# Configuração da internet
iwctl

# Configurar o relógio da bios
timedatectl set-ntp true

# Configura o layout do teclado
loadkeys br-abnt2

# Criar partições
cfdisk /dev/mmcblk1

# Formatando e montando partições
mkfs.ext4 /dev/mmcblk1p2
mkfs.vfat /dev/mmcblk1p1 
mount /dev/mmcblk1p2 /mnt
mkdir -p /mnt/boot/EFI
mount /dev/mmcblk1p1 /mnt/boot/EFI

# Criando arquivo swap
cd /mnt
dd if=/dev/zero of=swapfile bs=1M count=2046
chmod 600 swapfile
mkswap swapfile
swapon swapfile

# Fazendo o pacstrap 
pacstrap /mnt base linux linux-firmware grub efibootmgr neovim 

# Criando o fstab
genfstab -U /mnt > /mnt/etc/fstab

# Entrando no chroot
arch-chroot /mnt

