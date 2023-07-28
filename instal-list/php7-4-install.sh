#!/bin/bash

#
# Установка php7.4
function php7_4_install {
# 1 seconds wait time to start the setup
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted php7.4... \033[0m" ;
    sleep 2
done
sudo apt-get update
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install php7.4 php7.4-fpm php7.4-cli
php -v
sleep 5;
}
