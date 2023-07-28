#!/bin/bash

# install OBS Studio on Ubuntu 22.04 LTS
function obs_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted OBS Studio... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y ffmpeg obs-studio
}
