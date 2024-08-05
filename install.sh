#!/usr/bin/env bash

GREEN="\033[32m"
YELLOW="\033[33m"
TEXT="\033[0;39m"
_BOLD=$(tput bold)
_NORMAL=$(tput sgr0)
BIN_DIR="~/.local/bin"

if [ ! -d $BIN_DIR ]
then
    echo -e "$BIN_DIR not found. Creating directory..."
    mkdir -pv $BIN_DIR
fi

echo -e "\nInstalling wpman...\n" && sleep 0.3
cp -v ./src/wpman $BIN_DIR/
chmod +xv $BIN_DIR/wpman
echo -e "\n${GREEN}${_BOLD}wpman successfully installed!${TEXT}${_NORMAL}"
