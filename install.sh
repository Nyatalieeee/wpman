#!/usr/bin/env bash

GREEN="\033[32m"
YELLOW="\033[33m"
TEXT="\033[0;39m"
_BOLD=$(tput bold)
_NORMAL=$(tput sgr0)
BIN_DIR="$HOME/.local/bin"

if [ ! -d $BIN_DIR ]
then
    echo -e "$BIN_DIR not found. Creating directory..."
    mkdir -pv $BIN_DIR
fi

echo -e "\nInstalling wpman...\n" && sleep 0.3
mkdir -pv $HOME/.local/share/wpman/
cp -rv src/wpman $BIN_DIR/ --force
cp -rv src/wpman_data $HOME/.local/share/wpman/ --force
chmod +x $BIN_DIR/wpman/src/wpman --verbose
chmod +x $HOME/.local/share/wpman/wpman_data/* --verbose
echo -e "\n${GREEN}${_BOLD}wpman successfully installed!${TEXT}${_NORMAL}"
