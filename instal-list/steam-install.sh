#!/bin/bash

# https://ru.linuxcapable.com/%D0%BA%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-%D1%81%D1%82%D0%B8%D0%BC-%D0%BB%D0%B0%D1%83%D0%BD%D1%87%D0%B5%D1%80-%D0%BD%D0%B0-ubuntu-22-04-lts/
# Установите Steam
function steam_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Steam... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common apt-transport-https wget -y
sudo dpkg --add-architecture i386
wget -O- http://repo.steampowered.com/steam/archive/stable/steam.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/steam.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/steam.gpg] http://repo.steampowered.com/steam/ stable steam | sudo tee /etc/apt/sources.list.d/steam.list
sudo apt update
sudo apt-get install  -y\
  libgl1-mesa-dri:amd64 \
  libgl1-mesa-dri:i386 \
  libgl1-mesa-glx:amd64 \
  libgl1-mesa-glx:i386 \
  steam-launcher
}
