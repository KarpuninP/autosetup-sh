#!/bin/bash


# Установка synaptic
function synaptic_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Synaptic... \033[0m" ;
    sleep 2
done
sudo apt install synaptic


}
