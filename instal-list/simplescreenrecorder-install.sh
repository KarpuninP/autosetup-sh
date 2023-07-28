#!/bin/bash

# https://installati.one/ubuntu/22.04/simplescreenrecorder/
# Установите SimpleScreenRecorder
function simplescreenrecorder_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted SimpleScreenRecorder... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install -y simplescreenrecorder
}
