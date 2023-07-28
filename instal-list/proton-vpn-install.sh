#!/bin/bash

# VPN сервис из Швейцарии, предоставляющий как платные, так и бесплатные серверы.
# https://www.comss.ru/page.php?id=5046
function protonvpn_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted ProtonVPN ... \033[0m" ;
    sleep 2
done
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
sudo dpkg -i protonvpn-stable-release_1.0.3-2_all.deb
sudo apt update 
sudo apt-get install protonvpn -y 
rm -rf protonvpn-stable-release_1.0.3-2_all.deb
}
