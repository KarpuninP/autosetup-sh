#!/bin/bash

# https://ru.linuxcapable.com/%D0%BA%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-smplayer-%D0%BD%D0%B0-ubuntu-22-04-lts/
# Установите SMPlayer 
function smplayer_install  {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted SMPlayer ...  \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository ppa:alex-p/smplayer -y
sudo apt update
sudo apt-get install smplayer smplayer-themes -y
}
