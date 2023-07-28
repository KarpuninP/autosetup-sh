#!/bin/bash

# https://linuxhint.com/install-and-configure-smartctl-on-ubuntu/
# Установите Configure Smartctl
function smartmontools_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Configure Smartctl... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install smartmontools
}
