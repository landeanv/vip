#!/bin/bash
# Modifed By Gretongers Vpn Premium
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e ""
echo -e "${PURPLE}=================================="
echo -e "${LIGHT}     Status Auto Banned $sts       "
echo -e "${PURPLE}=================================="
echo -e "${LIGHT}"
echo -e "1. Auto Banned After 5 Minutes"
echo -e "2. Auto Banned After 10 Minutes"
echo -e "3. Auto Banned After 120 Minutes"
echo -e "4. Turn Off Auto Banned/MultiLogin"
echo -e "5. Exit"
echo -e "${PURPLE}======================================"
                echo -e "${LIGHT}       Auto Banned By Gretongers Vpn Premium"
                echo -e "${PURPLE}======================================"                                                                                                                                 
                echo -e "${LIGHT}"
                echo -e ""
read -p "Select From Options [1-4 or x] :  " AutoKill
read -p "Multilogin Maximum Number Of Allowed: " max
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/5 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                
                echo -e ""
                echo -e "${PURPLE}======================================"
                echo -e ""
                echo -e "${LIGHT}     Allowed IP: $max"
                echo -e "      Auto Banned Every     : 5 Minutes"      
                echo -e ""
                echo -e "${PURPLE}======================================"
                echo -e "${LIGHT}       Auto Banned By Gretongers Vpn Premium"
                echo -e "${PURPLE}======================================"                                                                                                                                 
                exit                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/10 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                
                echo -e ""
                echo -e "${PURPLE}=================================="                                                                                                          
echo -e ""
                echo -e " ${LIGHT}     Allowed IP: $max"
                echo -e "      Auto Banned Every     : 10 Minutes"
                echo -e ""
                echo -e "${PURPLE}======================================"
                echo -e "${LIGHT}       Auto Banned By Gretongers Vpn Premium"
                echo -e "${PURPLE}======================================"                                                                                                                                 
                exit
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/120 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                
                echo -e ""
                echo -e "${PURPLE}=================================="                                                                                                          
echo -e ""
                echo -e "${LIGHT}     Allowed IP : $max"
                echo -e "      Auto Banned Every     : 120 Minutes"
                echo -e ""
                echo -e "${PURPLE}======================================"
                echo -e "${LIGHT}       Auto Banned By Gretongers Vpn Premium"
                echo -e "${PURPLE}======================================"                                                                                                                                 
                 exit
                ;;
                4)
                clear
                echo > /etc/cron.d/tendang
                echo -e ""
                echo -e "${PURPLE}=================================="                                                                                                          
  echo -e ""
                echo -e "${LIGHT}    Auto Banned MultiLogin Turned ${RED}OFF  "
                echo -e ""
                echo -e "${PURPLE}======================================"
                echo -e "${LIGHT}       Auto Banned By Gretongers Vpn Premium"
                echo -e "${PURPLE}======================================"                                                                                                                                 
                   exit
                ;;
                x)
                clear
                exit
                ;;
        esac
