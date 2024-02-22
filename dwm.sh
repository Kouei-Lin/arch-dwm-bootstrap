#! /bin/bash

# basic utils
sudo pacman -S --noconfirm neofetch vim curl htop feh scrot flameshot slock base-devel git libx11 libxft xorg-server xorg-xinit xcompmgr xautolock firefox pipewire wireplumber pipewire-pulse alsa-utils noto-fonts noto-fonts-cjk noto-fonts-emoji && \

# DWM git clone
mkdir ~/.suckless && \

git clone https://github.com/Kouei-Lin/dwm-dotfiles ~/.suckless && \

# DWM make install
cd ~/.suckless/dwm && sudo make clean install && \

cd ~/.suckless/st && sudo make clean install && \

cd ~/.suckless/dmenu && sudo make clean install && \

cd ~/.suckless/dwmblocks && sudo make clean install && \

# .xinitrc
echo "
dwmblocks &

~/.fehbg &

xcompmgr &

xautolock -time 10 -locker slock &

exec dwm
" > ~/.xinitrc && \

# startx
startx && \

# feh background
feh --bg-fill ~/.suckless/bg/bg.jpg
