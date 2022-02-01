# Configurando o pacman.conf
sudo nvim /etc/pacman.conf
sudo pacman -Syy

# Instalando o yay 
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R caua /opt/yay-git
cd yay-git
makepkg -si

# Instalando aplicações de sistema básicas
sudo pacman -Syy xf86-video-intel xf86-input-synaptics xorg bspwm sxhkd lightdm lightdm-gtk-greeter alacritty rofi arandr feh zsh hsetroot xdo snes9x-gtk virtualbox ruby unclutter; yay -Syy google-chrome picom-jonaburg-git polybar jstest-gtk-git 

# Instalando fontes 
yay -S otf-fantasque-sans-mono nerd-fonts-git ipa-fonts cozzete-ttf ttf-roboto-mono otf-font-awesome ipa-fonts material-icons-git ttf-font-logos cherry-fonts-git

# Copiando arquivos de configuração
sudo cp -r ~/configs/configs/bspwm ~/.config; sudo cp -r ~/configs/configs/sxhkd ~/.config; sudo cp -r ~/configs/configs/alacritty ~/.config; sudo cp -r ~/configs/configs/picom ~/.config; sudo cp -r ~/configs/configs/polybar ~/.config
