#!/bin/bash

# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
# Установка Docker
function docker_install {
    # 2 seconds wait time to start the setup
    for i in $(seq 1 -1 1); do
        echo -ne "\033[1;31m $i\rStarted installed Docker... \033[0m" ;
        sleep 2
    done
    # Сначало удаляем старые зависимости (программы) что бы небыло проблем со совместимостью и ошибок
    sudo apt-get remove docker docker-engine docker.io containerd runc
    # Установка зависимостей для установки Docker
    sudo apt update
    sudo apt install curl software-properties-common ca-certificates apt-transport-https -y

    # Добавление официального репозитория Docker
    curl -f -s -S -L https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable"

    # Обновление списка пакетов и установка Docker
    sudo apt update
    sudo apt install -y docker-ce

    # Проверка статуса Docker
    sudo systemctl status docker

    # Добавление текущего пользователя в группу docker

    	sudo groupadd docker
        sudo usermod -aG docker $USER
        newgrp docker
        sudo systemctl restart docker
        echo "Added current user to the docker group, and restart docker"
   

    # Проверка, что Docker успешно установлен и запущен
    docker --version
}
