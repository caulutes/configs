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
sudo pacman -Syy xf86-video-intel xf86-input-synaptics xorg bspwm sxhkd lightdm lightdm-gtk-greeter alacritty rofi arandr feh zsh hsetroot xdo snes9x-gtk virtualbox ruby; yay -Syy google-chrome picom-jonaburg-git polybar jstest-gtk-git 

# Instalando fontes 
yay -S otf-fantasque-sans-mono nerd-fonts-git ipa-fonts cozzete-ttf ttf-roboto-mono otf-font-awesome

# Copiando arquivos de configuração
sudo cp -r ~/configs/bspwm ~/.config; sudo cp -r ~/configs/sxhkd ~/.config; sudo cp -r ~/configs/alacritty ~/.config; sudo cp -r ~/configs/picom ~/.config; sudo cp -r ~/configs/polybar ~/.config
