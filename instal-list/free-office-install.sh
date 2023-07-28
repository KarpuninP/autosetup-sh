#!/bin/bash

# https://ru.linuxcapable.com/%D0%BA%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-%D1%84%D1%80%D0%B8%D0%BE%D1%84%D0%B8%D1%81-%D0%BD%D0%B0-%D1%83%D0%B1%D1%83%D0%BD%D1%82%D1%83-%D0%BB%D0%B8%D0%BD%D1%83%D0%BA%D1%81/#Install_FreeOffice_Suite
# Установите  FreeOffice
function free_office_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted FreeOffice... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y && sudo apt --list upgradable
sudo apt install wget apt-transport-https gnupg2 software-properties-common
sudo apt-add-repository "deb http://shop.softmaker.com/repo/apt stable non-free"
wget -qO - https://shop.softmaker.com/repo/linux-repo-public.key | sudo apt-key add -
sudo apt update
sudo apt install softmaker-freeoffice-2021
}
