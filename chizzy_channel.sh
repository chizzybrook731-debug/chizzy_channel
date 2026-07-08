#!/bin/bash
clear

# COLORS
B='\033[1;34m'
C='\033[1;36m'
G='\033[1;32m'
Y='\033[1;33m'
W='\033[1;37m'
R='\033[0m'

# BLUE BANNER
echo -e "${B}"
echo "  ____ _   _ ___ ____ ____  ____"
echo " / ___| | | |_ _/ ___/ ___||  _ \\"
echo "| |   | |_| || |\\___ \\___ \\| |_) |"
echo "| |___|  _  || | ___) |__) |  _ < "
echo " \\____|_| |_|___|____/____/|_| \\_\\"
echo -e "${R}"
echo -e "${C} 🔥 WELCOME TO CHIZZY CHANNEL 🔥${R}"
echo -e "${B}==================================================${R}"

# MENU
while true
do
echo ""
echo -e "${Y}[1]${R} ${W}Join WhatsApp Channel${R}"
echo -e "${Y}[2]${R} ${W}Get Latest Updates${R}"
echo -e "${Y}[3]${R} ${W}Contact Admin${R}"
echo -e "${Y}[4]${R} ${W}Exit${R}"
echo -e "${B}==================================================${R}"
echo -ne "${C}Choose option: ${R}"
read opt

case $opt in
 1)
    echo -e "${G}Opening WhatsApp Channel...${R}"
    am start -a android.intent.action.VIEW -d "https://whatsapp.com/channel/0029VbB3hqHFXUuX6EU6ZJ2Y"
    ;;
 2)
    echo -e "${G}Checking for updates...${R}"
    bash <(curl -s https://raw.githubusercontent.com/chizzybrook731-debug/chizzy_channel/main/chizzy_channel.sh)
    ;;
 3)
    echo -e "${C}Admin: chizzybrook731${R}"
    echo -e "${C}DM me on WhatsApp${R}"
    ;;
 4)
    echo -e "${B}Goodbye 🔥${R}"
    exit 0
    ;;
 *)
    echo -e "${R}Invalid option. Try again.${R}"
    ;;
esac
done
