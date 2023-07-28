#!/bin/bash

#https://ru.linuxcapable.com/%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-gparted-%D0%BD%D0%B0-ubuntu-22-04-lts/
# Установка GParted
function gparted_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted GParted... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install gparted -y
}
