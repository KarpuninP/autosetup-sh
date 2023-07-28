#!/bin/bash

# https://ru.linuxcapable.com/%D0%BA%D0%B0%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B8%D1%82%D1%8C-openshot-%D0%BD%D0%B0-ubuntu-22-04-lts/
# Установите OpenShot
function openshot_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted OpenShot... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
sudo apt install dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https -y
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/openshot.gpg --keyserver keyserver.ubuntu.com --recv-keys FBA0C227099A5360635E3D9152165BD6B9BA26FA
echo 'deb [signed-by=/usr/share/keyrings/openshot.gpg] https://ppa.launchpadcontent.net/openshot.developers/libopenshot-daily/ubuntu jammy main' | sudo tee -a /etc/apt/sources.list.d/openshot.list
sudo apt update
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 52165BD6B9BA26FA
sudo apt install openshot-qt -y
}
