# Configurando o local
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwcloch --systohc

# Configuração de locales
nvim /etc/locale.gen
locale-gen
echo LANG=pt_BR.UTF-8 > /etc/locale.conf

# Configurando o teclado
echo KEYMAP=br-abnt2 > /etc/vconsole.conf

# Criando o hostname
echo bspwm > /etc/hostname

# Configuração dos hosts
nvim /etc/hosts

# mkinitcpio
mkinitcpio -P

# Criando uma senha pro root
echo "Create a password for root below"
passwd

# Instalando o grub
grub-install --target=x86_64-efi --bootloader-id=grub-uefi
grub-mkconfig -o /boot/grub/grub.cfg

# Criando o usuário
useradd -m -g users caua 
passwd caua

# Instalando extras
pacman -S sudo iwd dhcpcd net-tools fakeroot go base-devel 

# Configurando o sudo 
sudo nvim /etc/sudoers 

# Habilitando aplicações no boot
systemctl enable dhcpcd iwd 

echo "INSTALAÇÃO TERMINADA COM SUCESSO :)"
