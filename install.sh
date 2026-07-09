#!/bin/bash
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

clear
echo -e "${BLUE}INSTALLING CHIZZY CHANNEL v3.6...${NC}"
sleep 1

REPO="https://github.com/chizzybrook731-debug/chizzy_channel.git"
DIR="$HOME/chizzy_channel"

[ -d "$DIR" ] && rm -rf "$DIR"

echo -e "${YELLOW}Downloading...${NC}"
git clone $REPO
cd $DIR
chmod +x chizzy_channel.sh

echo ""
echo -e "${GREEN}INSTALL COMPLETE!${NC}"
echo "Run: cd ~/chizzy_channel && ./chizzy_channel.sh"
