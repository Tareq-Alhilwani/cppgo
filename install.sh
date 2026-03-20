#!/bin/bash

# --- Colors --- #
BLUE='\e[36m'
RED='\e[31m'
GREEN='\e[32m'
RESET='\e[0m'

# --- Root Check --- #
if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}Error: This script must be run with sudo!${RESET}"
   echo "Example: sudo ./install.sh"
   exit 1
fi
# --- Sudo Check --- #
if ! sudo -v &> /dev/null; then
    echo -e "${RED}Error: You do not have sudo privileges!${RESET}"
    exit 1
fi

# --- Universal Dependency Check --- #

check_dependencies() {
    local commands=("cmake" "ninja" "gcc" "g++" "git" "sed" "grep")
    local missing=()

    for cmd in "${commands[@]}"; do
        if ! command -v "$cmd" &> /dev/null; then
            missing+=("$cmd")
        fi
    done

    if [ ${#missing[@]} -ne 0 ]; then
        echo -e "${RED}Error: Missing required tools: ${missing[*]}${RESET}"
        echo "Please install them using your package manager (pacman, apt, dnf, etc.)"
        exit 1
    fi
}
#
# ==================== #
   check_dependencies
# ==================== #
#


# --- Script moving --- #
echo -e "${BLUE}>>> Making the script executable ${RESET}"
chmod +x cppgo
echo -e "${BLUE}>>> Copying the script to /usr/local/bin/ ${RESET}"
cp cppgo /usr/local/bin/cppgo
echo "========================"
echo -e " ${BLUE}The script is in place ${RESET}"
echo "========================"
echo "To start using the script: "
echo "1) cd to where you want to keep your project."
echo -e "2) Generate project: ${GREEN}cppgo g ${RESET}OR${GREEN} cppgo generate ${RESET}"
echo "3) cd into your project"
echo ""
echo "Now you can Create, Delete, Rename your C++ files Or Build and Run your project when you're done."
echo ""
