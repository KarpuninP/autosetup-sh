#!/bin/bash

#
# Установка Composer
function composer_install {
# 1 seconds wait time to start the setup
# 2 seconds wait time to start the setup
for i in $(seq 1 -1 1); do
echo -ne "\033[1;31m $i\rStarted instaleted Composer... \033[0m" ;
    sleep 2
done
echo -e "${c}Checking Additional Dependencies"; $r
#  Checking php
if  ! command -v php7.4  &> /dev/null 
then  
#php7-4;
echo "Надо установить пхп";
fi 

#  Checking unzip
if  ! command -v unzip  &> /dev/null 
then  
echo -e "${c}Instaleted unzip"; $r
sudo apt update
sudo apt install unzip
fi  
echo -e "${c}All Additional Dependencies installed"; $r 
echo -e "${c}Preparing for installation Composer"; $r
# Скачиваем 
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
# проверка хеша
HASH=`curl -sS https://composer.github.io/installer.sig`
# Проверяем что запуск скрипта установки безопасен
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sleep 1;
# Установка
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer -V

}

