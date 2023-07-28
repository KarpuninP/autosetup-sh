#!/bin/bash

# title:         Software Installation Script
# description:   This is a script that automates the installation of various software packages on Ubuntu.
# author:        Karpunin Pavel (Pasha Amedomaro)   
# License:       MIT License
# License URL:   https://opensource.org/licenses/MIT          
# created:       July 28 2023
# updated:       N/A
# version:       1.0
# Usage:         bash autosetup.sh

#==============================================================================
#                           Description
#==============================================================================
# This script is designed to simplify the process of installing the necessary
# software packages on Ubuntu systems. It sets my list of programs that I use
# These are tools and utilities commonly used by php developers, designers and
# regular users. By running this script, users can quickly set up their system
# with the necessary software without the hassle of installing each package
# individually.

#==============================================================================
#                           Requirements
#==============================================================================
# Make sure you have Ubuntu installed before running this script
# installed. Script tested on Ubuntu 22.04
# The 'dialog' utility must be installed on your system for the menu to work. 
# If it is not already installed, the script will prompt you to install it.
# Before running the script, make sure you have the necessary permissions 
# to install software on your system. It is recommended to run this script 
# as a user with administrative privileges (e.g., using 'sudo' in front of the command).

#==============================================================================
#                           Installation
#==============================================================================
# 1. Download the autosetup.sh file to your system.
# 2. Open a terminal in the directory containing the script.
# 3. Run the script with the following command:
# bash autosetup.sh
# 4. If the 'dialog' utility is not installed, the script will prompt you to install it.
# 5. The script will display a menu of software packages. Use arrow keys
# to navigate and press SPACE to select or deselect options.
# 6. Once you have made your choice, press ENTER to start the installation.
# 7. In some cases, the script will ask you to enter a sudo password and press certain keys.
# 8. Sit back and relax while the script installs the selected software for you.
# 9. Enjoy your newly configured system with all the necessary software installed!
#==============================================================================
#                           Usage
#==============================================================================
# Usage: autosetup.sh
# This command will run the script and present you with the software menu
# packages you can choose to install. Use arrow keys to navigate through
# and press SPACE to select or deselect options. After you have made your
# selection, press ENTER to start the installation process. The script will
# then automatically install the selected software packages on your system.
# Follow the instructions on the command line.

#==============================================================================
#                           Troubleshooting
#==============================================================================
# - If you encounter any issues while running the script, please ensure that
#   you have a stable internet connection.
# - If the script encounters any errors during the installation process, it
#   will display relevant error messages on the screen. You can refer to these
#   messages to identify the problem.
# - For further assistance or to report bugs, you can open an issue on the
#   GitHub repository of this project:
#   https://github.com/amedomaro/my_awesome_install_script/issues

#==============================================================================
#                           Contributions
#==============================================================================
# Contributions to this open-source project are welcome! If you have any
# improvements or new features to suggest, feel free to create a pull request
# on the GitHub repository. Please ensure that your contributions align with
# the goals and guidelines of the project.

#==============================================================================
#                           Changelog
#==============================================================================
# Update this project on how often the operating system is reinstalled
# Version 1.0.0.0 - Initial release - date release 28.07.2023

#==============================================================================
#                           Credits
#==============================================================================
# Special thanks to all those who want to participate in this project
# And also my free time :))

#==============================================================================
#                           Disclaimer
#==============================================================================
# This script is provided as-is, and the author makes no warranties regarding
# its functionality or fitness for a particular purpose. Use the script at your
# own risk. The author will not be liable for any damages or losses arising
# from the use of this script.

#==============================================================================
#                           End of Header
#==============================================================================



#Display Banner
clear;
echo -e "\n\n\n\n

╭━━━╮╱╱╱╱╱╱╱╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭━━┳━╮╱╭┳━━━╮
┃╭━╮┃╱╱╱╱╱╱╱┃┃╱╱╱╱╱╱╱╱╱╱╱╱╱╱╰┫┣┫┃╰╮┃┃╭━╮┃
┃┃╱┃┣╮╭┳━━┳━╯┣━━┳╮╭┳━━┳━┳━━╮╱┃┃┃╭╮╰╯┃┃╱╰╯
┃╰━╯┃╰╯┃┃━┫╭╮┃╭╮┃╰╯┃╭╮┃╭┫╭╮┃╱┃┃┃┃╰╮┃┃┃╱╭╮
┃╭━╮┃┃┃┃┃━┫╰╯┃╰╯┃┃┃┃╭╮┃┃┃╰╯┃╭┫┣┫┃╱┃┃┃╰━╯┣╮
╰╯╱╰┻┻┻┻━━┻━━┻━━┻┻┻┻╯╰┻╯╰━━╯╰━━┻╯╱╰━┻━━━┻╯"

sleep 5;

clear;
echo -e "\n\n\n\n

██╗███╗░░██╗████████╗██████╗░░█████╗░██████╗░██╗░░░██╗░█████╗░███████╗
██║████╗░██║╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║░░░██║██╔══██╗██╔════╝
██║██╔██╗██║░░░██║░░░██████╔╝██║░░██║██║░░██║██║░░░██║██║░░╚═╝█████╗░░
██║██║╚████║░░░██║░░░██╔══██╗██║░░██║██║░░██║██║░░░██║██║░░██╗██╔══╝░░
██║██║░╚███║░░░██║░░░██║░░██║╚█████╔╝██████╔╝╚██████╔╝╚█████╔╝███████╗
╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚═════╝░░╚═════╝░░╚════╝░╚══════╝"

sleep 3;

clear;
echo -e "\n\n\n
╔════════════════════════════════════════════════╗
    _         _       ____       _
   / \  _   _| |_ ___/ ___|  ___| |_ _   _ _ __
  / _ \| | | | __/ _ \___ \ / _ \ __| | | | '_ |
 / ___ \ |_| | || (_) |__) |  __/ |_| |_| | |_) |
/_/   \_\__,_|\__\___/____/ \___|\__|\__,_| .__/
                                          |_|  	                                        
-------------------------------------------------
|      \e[91m>> Developer: Pasha Amedomaro <<\e[0m         |
|           \e[91m>> Version: 1.0.0.0 <<\e[0m              |
-------------------------------------------------

╚════════════════════════════════════════════════╝\n\n\n"					  


# 10 seconds wait time to start the setup
for i in `seq 10 -1 1` ; do echo -ne "$i\rThe setup will start in... " ; sleep 1 ; done

# Function for displaying debug messages
function debug_msg() {
    echo "[DEBUG]: $1"
}


# Including all files from the 'instal-list' folder
for file in ./instal-list/*; do
    if [[ -f "$file" ]]; then
        . "$file"
    fi
done




# Checking for the presence of the 'dialog' utility
if ! command -v dialog &> /dev/null; then
    echo "You need to install 'dialog'"
    sudo apt-get update
    sudo apt-get install dialog
fi 

# Platform Height
HEIGHT=205
# Platform Width
WIDTH=60
# Message height
CHOICE_HEIGHT=60
BACKTITLE="Software Installation Menu for Ubunto "
TITLE="Select Programs to Install"
MENU="Select one of the following options: Press SPACE to enable/disable the option. \n\n"

# Function to install all programs
function all() {
	 start
    git_install
    php7_4_install
    audacious_install
    audacity_install
    chrome_install
    free_office_install
    libreoffice_install
    gimp_install
    gparted_install
    kdenlive_install
    mediainfo_install
    obs_install
    openshot_install
    photoflare_install
    protonvpn_install
    vlc_install
    xapps_install
    qbittorrent_install
    photoflare_install
    phpstorm_install
    simplescreenrecorder_install
    smartmontools_install
    smplayer_install
    spotify_install
    steam_install
    synaptic_install
    zoom_install
    composer_install
    docker_install
    docker_compose_install
    final
}

# Adding all programs to the menu
CHOICE_OPTIONS=(
     1 "Install all" off
     2 "Setting preferences" off
     3 "Install Git" off
     4 "Install PHP 7.4" off
     5 "Install Audacious" off
     6 "Install Audacity" off
     7 "Install Chrome" off
     8 "Install FreeOffice" off
     9 "Install LibreOffice" off
     10 "Install GIMP" off
     11 "Install GParted" off
     12 "Install Kdenlive" off
     13 "Install MediaInfo" off
     14 "Install OBS" off
     15 "Install OpenShot" off
     16 "Install Photoflare" off
     17 "Install ProtonVPN" off
     18 "Install VLC" off
     19 "Install XApps" off
     20 "Install qBittorrent" off
     21 "Install PHPStorm" off
     22 "Install SimpleScreenRecorder" off
     23 "Install Smartmontools" off
     24 "Install SMPlayer" off
     25 "Install Spotify" off
     26 "Install Steam" off
     27 "Install Zoom" off
     28 "Install Composer" off
     29 "Install Docker" off
     30 "Install Docker-Compose" off
     31 "Install Synaptic" off
     32 "Completing the installation" off
)

# Getting the user's choice with 'dialog'
CHOICE=$(dialog --clear \
               --backtitle "$BACKTITLE" \
               --title "$TITLE" \
               --checklist "$MENU" \
               $HEIGHT $WIDTH $CHOICE_HEIGHT \
               "${CHOICE_OPTIONS[@]}" \
               2>&1 >/dev/tty)

clear

# Handle user selection
if [ -z "$CHOICE" ]; then
    echo "Nothing selected."
    exit 1
fi

debug_msg "Selected options: $CHOICE"

# Create a file to write debug output
DEBUG_LOG="debug.log"
echo "Starting script execution." > "$DEBUG_LOG"

# Actions based on user selection
for item in $CHOICE; do
    case $item in
        1)
            # Executing a Function to Install All Programs
            debug_msg "Installing all programs..."
            all
            debug_msg "Installation of All programs is completed."
            ;;
        2)
            # Function execution for  Setting preferences installation
            debug_msg "Setting preferences..."
            start
            debug_msg " Setting preferences installation is complete."
            ;;    
        3)
            # Executing a function to install Git
            debug_msg "Started instaleted Git..."
            git_install
            debug_msg "Git installation is complete."
            ;;
        4)
            # Executing a function to installPHP 7.4
            debug_msg "Started instaleted PHP 7.4..."
            php7_4_install
            debug_msg "PHP 7.4 installation is complete."
            ;;
        5)
            # Executing a function to install Audacious
            debug_msg "Started instaleted Audacious..."
            audacious_install
            debug_msg "Audacious installation is complete."
            ;;
       
        6)
            # Executing a function to install Audacity
            debug_msg "Started instaleted Audacity..."
            audacity_install
            debug_msg "Audacity installation is complete."
            ;;
       
        7)
            # Executing a function to install Chrome
            debug_msg "Started instaleted Chrome..."
            chrome_install
            debug_msg "Chrome installation is complete."
            ;;
       
        8)
            # Executing a function to install FreeOffice
            debug_msg "Started instaleted FreeOffice..."
            free_office_install
            debug_msg "FreeOffice installation is complete."
            ;;
       
        9)
            # Executing a function to install LibreOffice
            debug_msg "Started instaleted LibreOffice..."
            libreoffice_install
            debug_msg "LibreOffice installation is complete."
            ;;
       
        10)
            # Executing a function to install GIMP
            debug_msg "Started instaleted GIMP..."
            gimp_install
            debug_msg "GIMP installation is complete."
            ;;
       
        11)
            # Executing a function to install GParted
            debug_msg "Started instaleted GParted..."
            gparted_install
            debug_msg "GParted installation is complete."
            ;;
        12)
            # Executing a function to install Kdenlive
            debug_msg "Started instaleted Kdenlive..."
            kdenlive_install
            debug_msg "Kdenlive installation is complete."
            ;;
        13)
            # Executing a function to install MediaInfo
            debug_msg "Started instaleted MediaInfo..."
            mediainfo_install
            debug_msg "MediaInfo installation is complete."
            ;;
        14)
            # Executing a function to install OBS
            debug_msg "Started instaleted OBS..."
            obs_install
            debug_msg "OBS installation is complete."
            ;;
        15)
            # Executing a function to install OpenShot
            debug_msg "Started instaleted OpenShot..."
            openshot_install
            debug_msg "OpenShot installation is complete."
            ;;
        16)
            # Executing a function to install Photoflare
            debug_msg "Started instaleted Photoflare..."
            photoflare_install
            debug_msg "Photoflare installation is complete."
            ;;
       
        17)
            # Executing a function to install ProtonVPN
            debug_msg "Started instaleted ProtonVPN..."
            protonvpn_install
            debug_msg "ProtonVPN installation is complete."
            ;;
       
        18)
            # Executing a function to install VLC
            debug_msg "Started instaleted VLC..."
            vlc_install
            debug_msg "VLC installation is complete."
            ;;
       
        19)
            # Executing a function to install XApps
            debug_msg "Started instaleted XApps..."
            xapps_install
            debug_msg "XApps installation is complete."
            ;;
       
        20)
            # Executing a function to install qBittorrent
            debug_msg "Started instaleted qBittorrent..."
            qbittorrent_install
            debug_msg "qBittorrent installation is complete."
            ;;
       
        21)
            # Executing a function to install PHPStorm
            debug_msg "Started instaleted PHPStorm..."
            phpstorm_install
            debug_msg "PHPStorm installation is complete."
            ;;
       
        22)
            # Executing a function to install SimpleScreenRecorder
            debug_msg "Started instaleted SimpleScreenRecorder..."
            simplescreenrecorder_install
            debug_msg "SimpleScreenRecorder installation is complete."
            ;;
        23)
            # Executing a function to install Smartmontools
            debug_msg "Started instaleted Smartmontools..."
             smartmontools_install
            debug_msg "Smartmontools installation is complete."
            ;;
        24)
            # Executing a function to install SMPlayer
            debug_msg "Started instaleted SMPlayer..."
            smplayer_install 
            debug_msg "SMPlayer installation is complete."
            ;;
        25)
            # Executing a function to install Spotify
            debug_msg "Started instaleted Spotify..."
            spotify_install
            debug_msg "Установка Spotify installation is complete."
            ;;
        26)
            # Executing a function to install Steam
            debug_msg "Started instaleted Steam..."
            steam_install
            debug_msg "Steam installation is complete."
            ;;
        27)
            # Executing a function to install Zoom
            debug_msg "Started instaleted Zoom..."
            zoom_install
            debug_msg "Zoom installation is complete."
            ;;
       
        28)
            # Executing a function to install Composer
            debug_msg "Started instaleted Composer..."
            composer_install
            debug_msg "Composer installation is complete."
            ;;
       
        29)
            # Executing a function to install Docker 
            debug_msg "Started instaleted Docker ..."
            docker_install
            debug_msg "Docker installation is complete."
            ;;
       
        30)
            # ВExecuting a function to install Docker Compose
            debug_msg "Started instaleted Docker Compose..."
            docker_compose_install
            debug_msg "Docker Compose installation is complete."
            ;;

        31)
            # Executing a function to install Synaptic
            debug_msg "Completing the installation..."
            synaptic_install
            debug_msg "Installation completed."
            ;;
        32)
            # Executing a function to install final
            debug_msg "Completing the installation..."
            final
            debug_msg "Installation completed."
            ;;    
        *)
            echo "Error: Wrong choice!"
            ;;
    esac
done

echo "Software installation completed"
echo "End of script execution." >> "$DEBUG_LOG"

