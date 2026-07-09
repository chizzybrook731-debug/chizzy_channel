#!/bin/bash
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

YOUR_NUMBER="263777984650"
PRO_CODE="1560"

clear
echo -e "${BLUE}"
echo " CHIZZY CHANNEL v2.0 PRO"
echo -e "${NC}"
echo " ───────────────────────────"

echo -e "${YELLOW}[1]${NC} Free Version"
echo -e "${GREEN}[2]${NC} PRO Version - \$1"
echo "[0] Exit"
read -p "Choose: " version

if [ "$version" = "2" ]; then
    clear
    echo -e "${GREEN}PRO VERSION - ONLY \$1${NC}"
    echo "─────────────────────"
    echo "PRO Features:"
    echo "1. Custom Banner Creator"
    echo "2. Auto-Join Link Generator" 
    echo "3. Gold VIP Theme"
    echo ""
    MESSAGE="I%20want%20to%20buy%20the%20PRO%20feature%20code%20for%20%241"
    WA_LINK="https://wa.me/${YOUR_NUMBER}?text=${MESSAGE}"
    echo "Opening WhatsApp..."
    sleep 2
    termux-open-url "$WA_LINK" 2>/dev/null
    echo -e "\nAfter payment I will send you code: ${CYAN}1560${NC}"
    exit
fi

if [ "$version" = "1" ]; then
    clear
    echo -e "${BLUE}FREE VERSION${NC}"
    echo "[1] Join WhatsApp Channel"
    echo "https://whatsapp.com/channel/0029VbB3hqHFXuX6EU6ZJ2Y"
fi

if [ "$version" = "0" ]; then
    exit
fi
