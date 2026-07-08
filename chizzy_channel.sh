#!/data/data/com.termux/files/usr/bin/bash

pkg install figlet lolcat -y 2>/dev/null

clear
figlet "CHIZZY" | lolcat
echo "HIP HOP UPCOMING KING" | lolcat
echo "-----------------------------------"
echo ""
echo "👑 Join my WhatsApp Channel 👑"
echo "https://whatsapp.com/channel/0029VbB3hqHFXUuX6EU6ZJ2Y"
echo ""
read -p "Press ENTER to open in WhatsApp..." enter

am start -a android.intent.action.VIEW -d "https://whatsapp.com/channel/0029VbB3hqHFXUuX6EU6ZJ2Y"
echo ""
echo "Let's run it up! 2026 is ours 🔥"
