#!/bin/bash

# Установите браузер Chrom https://help.ubuntu.ru/wiki/google_chrome
function chrome_install {
    # 2 seconds wait time to start the setup
    for i in $(seq 1 -1 1); do
        echo -ne "\033[1;31m $i\rStarted instaleted Chrome... \033[0m" ;
        sleep 2
    done
    sudo apt update && sudo apt upgrade -y
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable
}
