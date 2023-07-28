#!/bin/bash

# https://ru.linuxcapable.com/%D0%BA%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-vlc-media-player-%D0%BD%D0%B0-ubuntu-22-04-lts/
# Установите VLC Media Player
function vlc_install {
# 1 seconds wait time to start the setup
for i in `seq 1 -1 1` ; do echo -ne "$i\rStarted instaleted VLC Media Player... " ; sleep 1 ; done
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository ppa:videolan/stable-daily -y
sudo apt-get update
sudo apt install vlc -y
}
