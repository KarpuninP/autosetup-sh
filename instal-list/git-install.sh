#!/bin/bash

# https://linuxhint.com/install-git-ubuntu22-04/
# Установка Git
function git_install {
# 1 seconds wait time to start the setup
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Git.. \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install git
git --version
sleep 3;
}
