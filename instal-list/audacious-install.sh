#!/bin/bash

# https://ru.linuxcapable.com/%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-%D0%B4%D0%B5%D1%80%D0%B7%D0%BA%D0%B8%D0%B9-%D0%BD%D0%B0-%D1%83%D0%B1%D1%83%D0%BD%D1%82%D1%83/
# Установите браузер Audacious
function audacious_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Audacity... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install audacious audacious-plugins
sudo apt install audacious-dev
}
