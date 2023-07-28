#!/bin/bash

# Установите PhpStorm
function phpstorm_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted PhpStorm...\033[0m" ;
    sleep 2
done
sudo snap install phpstorm --classic
}
