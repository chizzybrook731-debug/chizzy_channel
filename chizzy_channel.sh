#!/bin/bash
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m'

YOUR_NUMBER="263777984650"
PRO_CODE="1560"
CHANNEL_LINK="https://whatsapp.com/channel/0029VbB3hqHFXUuX6EU6ZJ2Y"
PRO_UNLOCKED=false

banner_creator() {
    clear
    echo -e "${CYAN}CUSTOM BANNER CREATOR${NC}"
    read -p "Enter your text: " text
    echo ""
    echo -e "${GREEN}Your Banner:${NC}"
    echo " █████████████"
    echo " █ $text █"
    echo " █████████████████████"
    read -p "Press Enter"
}

link_generator() {
    clear
    echo -e "${CYAN}AUTO-JOIN LINK GENERATOR${NC}"
    read -p "Paste Channel ID: " link
    echo ""
    echo -e "${GREEN}Your Join Link:${NC}"
    echo "https://whatsapp.com/channel/$link"
    read -p "Press Enter"
}

check_pro() {
    if [ "$PRO_UNLOCKED" = false ]; then
        echo -e "${RED}[LOCKED] Buy PRO for \$1${NC}"
        sleep 2
        return 1
    fi
    return 0
}

while true; do
clear
echo -e "${BLUE}"
echo " ██████╗██╗ ██╗██╗███████╗███████╗██╗ ██╗"
echo "██╔════╝██║ ██║██║██╔════╝██╔════╝██║ ██╔╝"
echo "██║ ███████║██║███████╗███████╗█████╔╝ "
echo "██║ ██╔══██║██║╚════██║╚════██║██╔═██╗ "
echo "╚██████╗██║ ██║██║███████║███████║██║ ██╗"
echo " ╚═════╝╚═╝ ╚═╝╚═╝╚══════╝╚══════╝╚═╝ ╚═╝"
echo " CHANNEL v3.4 PRO"
echo -e "${NC}"
echo " ───────────────────────────"

[ "$PRO_UNLOCKED" = true ] && echo -e "${GREEN}[PRO UNLOCKED]${NC}" || echo -e "${YELLOW}[FREE MODE]${NC}"
echo ""
echo -e "${YELLOW}[1]${NC} Join WhatsApp Channel"
echo -e "[2] Custom Banner Creator ${RED}[PRO]${NC}"
echo -e "[3] Auto-Join Link Generator ${RED}[PRO]${NC}"
echo -e "[4] Gold VIP Theme ${RED}[PRO]${NC}"
echo -e "${GREEN}[5]${NC} Buy PRO for \$1"
echo -e "[6] Enter PRO Code"
echo "[0] Exit"
echo ""
read -p "Choose: " choice

case $choice in
    1)
        echo "Opening WhatsApp Channel..."
        termux-open-url "$CHANNEL_LINK"
        sleep 2
        ;;
    2) check_pro && banner_creator ;;
    3) check_pro && link_generator ;;
    4) check_pro && echo -e "${YELLOW}Gold VIP Theme Applied!${NC}" && sleep 2 ;;
    5)
        echo "Opening WhatsApp to contact admin..."
        termux-open-url "https://wa.me/${YOUR_NUMBER}?text=I%20want%20to%20buy%20PRO%20code%20for%20%241"
        echo "Message sent. Admin will reply with your PRO code."
        sleep 2
        ;;
    6)
        read -p "Enter PRO Code: " input_code
        if [ "$input_code" = "$PRO_CODE" ]; then
            PRO_UNLOCKED=true
            echo -e "${GREEN}PRO Unlocked Successfully!${NC}"
        else
            echo -e "${RED}Wrong Code!${NC}"
        fi
        sleep 2
        ;;
    0) exit ;;
    *) echo "Invalid option" && sleep 1 ;;
esac
done
