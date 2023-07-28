#!/bin/bash

# https://ubuntuhandbook.org/index.php/2020/11/install-pix-xed-xplayer-xreader-xviewer-ubuntu-20-04/
# Установите  'X-Apps’ (Pix, Xed, Xplayer, Xreader, Xviewer)
function xapps_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted X-Apps... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository "deb http://ppa.launchpad.net/savoury1/xapps/ubuntu focal main"
sudo apt update
sudo apt install pix xed xplayer xviewer xreader
}
