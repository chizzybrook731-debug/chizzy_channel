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
GITHUB_REPO="https://github.com/chizzybrook731-debug/chizzy_channel.git"
PRO_FILE="$HOME/.chizzy_pro"

# Load PRO status
[ -f "$PRO_FILE" ] && PRO_UNLOCKED=true || PRO_UNLOCKED=false

save_pro() {
    echo "true" > "$PRO_FILE"
}

big_banner() {
    echo -e "${BLUE}"
    echo " ██████╗██╗ ██╗██╗███████╗███████╗██╗ ██╗"
    echo "██╔════╝██║ ██║██║██╔════╝██╔════╝██║ ██╔╝"
    echo "██║ ███████║██║███████╗███████╗█████╔╝ "
    echo "██║ ██╔══██║██║╚════██║╚════██║██╔═██╗ "
    echo "╚██████╗██║ ██║██║███████║███████║██║ ██╗"
    echo " ╚═════╝╚═╝ ╚═╝╚═╝╚══════╝╚══════╝╚═╝ ╚═╝"
    echo " CHANNEL v3.6 PRO EDITION"
    echo -e "${NC}"
}

loading() {
    echo -ne "${CYAN}Generating payment link"
    for i in {1..3}; do echo -ne "."; sleep 0.5; done
    echo ""
}

auto_update() {
    echo -e "${YELLOW}Checking for updates...${NC}"
    git fetch origin 2>/dev/null
    LOCAL=$(git rev-parse HEAD 2>/dev/null)
    REMOTE=$(git rev-parse origin/main 2>/dev/null)
    if [ "$LOCAL"!= "$REMOTE" ]; then
        echo -e "${GREEN}Update found! Downloading...${NC}"
        git pull origin main
        echo -e "${GREEN}Updated! Restart script.${NC}"
        exit 0
    else
        echo -e "${GREEN}You are on the latest version${NC}"
        sleep 2
    fi
}

banner_creator() {
    clear
    echo -e "${CYAN}CUSTOM BANNER CREATOR${NC}"
    read -p "Enter your text: " text
    echo ""
    echo -e "${GREEN}Your Banner:${NC}"
    echo " █████████████"
    echo " █ $text █"
    echo " █████████████"
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
big_banner
echo " ───────────────────────────"

[ "$PRO_UNLOCKED" = true ] && echo -e "${GREEN}[PRO UNLOCKED]${NC}" || echo -e "${YELLOW}[FREE MODE]${NC}"
echo ""
echo -e "${YELLOW}[1]${NC} Join WhatsApp Channel"
echo -e "[2] Custom Banner Creator ${RED}[PRO]${NC}"
echo -e "[3] Auto-Join Link Generator ${RED}[PRO]${NC}"
echo -e "[4] Gold VIP Theme ${RED}[PRO]${NC}"
echo -e "${GREEN}[5]${NC} Buy PRO for \$1"
echo -e "[6] Enter PRO Code"
echo -e "[7] Check for Updates"
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
        loading
        echo "Opening WhatsApp to contact admin..."
        termux-open-url "https://wa.me/${YOUR_NUMBER}?text=I%20want%20to%20buy%20PRO%20code%20for%20%241"
        echo -e "${GREEN}Message sent. Admin will reply with your PRO code.${NC}"
        sleep 2
        ;;
    6)
        read -p "Enter PRO Code: " input_code
        if [ "$input_code" = "$PRO_CODE" ]; then
            PRO_UNLOCKED=true
            save_pro
            echo -e "${GREEN}PRO Unlocked Successfully!${NC}"
        else
            echo -e "${RED}Wrong Code!${NC}"
        fi
        sleep 2
        ;;
    7) auto_update ;;
    0) exit ;;
    *) echo "Invalid option" && sleep 1 ;;
esac
done
