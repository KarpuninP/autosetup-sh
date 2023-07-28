#!/bin/bash

# software-properties-common
# Это программное обеспечение обеспечивает абстракцию используемых репозиториев apt. Это позволяет вам легко управлять своим дистрибутивом и источниками программного обеспечения независимых поставщиков программного обеспечения.На практике это означает, что он предоставляет несколько полезных скриптов для добавления и удаления PPA.Без него вам пришлось бы добавлять и удалять репозитории (например, PPA) вручную

# autoconf
# Autoconf — утилита для создания конфигурационных скриптов (configure), которые автоматически настраивают пакеты с исходным кодом для работы в Unix-подобных операционных системах.

# unzip
# Пакет UnZip содержит утилиты извлечения ZIP. Они полезны для извлечения файлов из ZIP архивов. ZIP архивы создаются утилитами PKZIP или Info-ZIP изначально в DOS окружении. https://docstore.mik.ua/manuals/ru/blfs6/general/unzip.html 

# libncurses5-dev
# Подпрограммы библиотеки ncurses — это независимый от терминала метод обновления экранов персонажей с разумной оптимизацией.

#libcurl4 libcurl4-openssl-dev
# libcurl — простая в использовании клиентская библиотека передачи по URL, поддерживающая DICT, FILE, FTP, FTPS, GOPHER, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, TELNET и TFTP.

# mlocate — набор инструментов для быстрого поиска файлов по файловой системе.

# imagemagick  - консольный графический редактор ImageMagick.

# xdg-utils -  позволяющие приложениям взаимодействовать с используемой пользователем средой рабочего стола независимо от того, какая именно это среда.

function start {

# Required dependencies for all softwares (important)
echo -e "${c}Installing complete dependencies pack."; $r
sudo apt install -y software-properties-common autoconf unzip libncurses5-dev libcurl4 libcurl4-openssl-dev mlocate imagemagick xdg-utils

sleep 1

# Show Battery Percentage on Top Bar [Debian (gnome)]
if [[ $XDG_CURRENT_DESKTOP =~ 'GNOME' ]]; then 
	gsettings set org.gnome.desktop.interface show-battery-percentage true
fi

sleep 1

# Upgrade and Update Command
echo -e "${c}Updating and upgrading before performing further operations."; $r
sudo apt update && sudo apt upgrade -y
sudo apt --fix-broken install -y
sudo update-grub

sleep 1

#Installing curl and wget
echo -e "${c}Installing Curl and wget"; $r
sudo apt-get install -y wget curl

sleep 1

# Настройки системы 
echo -e "${c} System settings"; $r
#СВЕРНУТЬ КЛИКОМ 
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
# Решаем проблему с отображением кириллицы в текстовом редакторе Gedit
gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['UTF-8', 'WINDOWS-1251', 'KOI8-R', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

# Устанавливаем дополнительную поддержку архиваторов
sudo apt install -y p7zip-rar unzip rar unrar unace arj cabextract 

#Installing dig and net-tools
echo -e "${c}Installing DNS Utils and net-tools"; $r
sudo apt install -y dnsutils net-tools

sleep 1

# Install GNOME EXTENSIONS
# https://losst.pro/nastrojka-ubuntu-22-04-posle-ustanovki
echo -e "${c}Installing gnome shell manager"; $r
sudo apt install gnome-shell-extension-manager
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Ctrl-l']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Ctrl>Shift_L']"

sleep 1

#Installing VIM
echo -e "${c}Installing VIM"; $r
sudo apt install -y vim

sleep 1

#Installing media codecs
echo -e "${c}Installing media codecs"; $r
sudo apt install -y ubuntu-restricted-extras

sleep 1

#Installing console monitoring of Bashtop resources
echo -e "${c}Installing console monitoring of Bashtop resources"; $r
sudo apt install -y bashtop

#Installing Gnome desktop extensions
# https://www.comss.ru/page.php?id=10421
# https://extensions.gnome.org/
echo -e "${c}Installing Gnome desktop extensions"; $r
sudo apt install -y chrome-gnome-shell

sleep 1

# Install TLP battery optimization (Improve Battery Life)
echo -e "${c}Installing TLP battery optimization for improve Battery Life"; $r
sudo apt install -y tlp

# Start TLP & show status 
sudo tlp start
sudo tlp-stat -s

# indicates tlp status
echo -e "\033[1;35m tlp list"

sleep 5

# Install Hardinfo (show hardware info) & timeshift (compleate backup of the os) lm-sensors (опрос датчиков материнской платы)
sudo apt install -y hardinfo
sudo apt install -y timeshift
sudo apt install lm-sensors

# Install neofetch show system info system info (there is also pfetch)
sudo apt install -y neofetch 
sleep 2

}


function final {
# Final Upgrade and Update Command
echo -e "${c}Updating and upgrading to finish auto-setup script."; $r
sudo apt update && sudo apt upgrade -y
sudo apt --fix-broken install -y
}

























