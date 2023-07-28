#!/bin/bash

# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04
# Установка Docker Compose
function docker_compose_install {
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Docker Compose... \033[0m" ;
    sleep 2
done
sudo apt update && sudo apt upgrade -y
# Check last version https://github.com/docker/compose/releases
mkdir -p ~/.docker/cli-plugins/
sudo curl -L "https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
}
