#!/bin/bash

# https://ru.linuxcapable.com/%D0%BA%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-libreoffice-%D0%BD%D0%B0-ubuntu-22-04-lts/
# Установите LibreOffice
function libreoffice_install {
# 1 seconds wait time to start the setup
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted LibreOffice... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update
sudo apt install libreoffice -y
}
