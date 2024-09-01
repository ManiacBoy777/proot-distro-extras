#!/usr/bin/env bash
# Color codes
# Regular Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Bold Colors
BOLD_BLACK='\033[1;30m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

# Underline Colors
UNDERLINE_BLACK='\033[4;30m'
UNDERLINE_RED='\033[4;31m'
UNDERLINE_GREEN='\033[4;32m'
UNDERLINE_YELLOW='\033[4;33m'
UNDERLINE_BLUE='\033[4;34m'
UNDERLINE_PURPLE='\033[4;35m'
UNDERLINE_CYAN='\033[4;36m'
UNDERLINE_WHITE='\033[4;37m'

# Background Colors
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_PURPLE='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

# High Intensity Colors
HI_BLACK='\033[0;90m'
HI_RED='\033[0;91m'
HI_GREEN='\033[0;92m'
HI_YELLOW='\033[0;93m'
HI_BLUE='\033[0;94m'
HI_PURPLE='\033[0;95m'
HI_CYAN='\033[0;96m'
HI_WHITE='\033[0;97m'

# Bold High Intensity Colors
BOLD_HI_BLACK='\033[1;90m'
BOLD_HI_RED='\033[1;91m'
BOLD_HI_GREEN='\033[1;92m'
BOLD_HI_YELLOW='\033[1;93m'
BOLD_HI_BLUE='\033[1;94m'
BOLD_HI_PURPLE='\033[1;95m'
BOLD_HI_CYAN='\033[1;96m'
BOLD_HI_WHITE='\033[1;97m'

# High Intensity Background Colors
BG_HI_BLACK='\033[0;100m'
BG_HI_RED='\033[0;101m'
BG_HI_GREEN='\033[0;102m'
BG_HI_YELLOW='\033[0;103m'
BG_HI_BLUE='\033[0;104m'
BG_HI_PURPLE='\033[0;105m'
BG_HI_CYAN='\033[0;106m'
BG_HI_WHITE='\033[0;107m'

RESET='\033[0m'


# Install script
curl -fsSL "https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/releases/kali.sh" -o $PREFIX/etc/proot-distro/kali.sh
curl -fsSL "https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/releases/nethunter.sh" -o $PREFIX/etc/proot-distro/kali.sh
curl -fsSL "https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/releases/centos.sh" -o $PREFIX/etc/proot-distro/centos.sh
curl -fsSL "https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/releases/parrot.sh" -o $PREFIX/etc/proot-distro/parrot.sh

echo ''
echo -e "${GREEN}proot-distro-extras${RESET} is now installed!"
echo ''
echo The following aliases are now available:
echo ''
echo -e "${CYAN}kali"
echo -e "${CYAN}nethunter"
echo -e "${CYAN}parrot"
echo -e "${CYAN}centos"
echo ''
echo -e "${RESET}Type ${GREEN}proot-distro list${RESET} to show a list of all available distributions"
echo ''
echo -e "Then type ${GREEN}proot-distro install ${CYAN}<alias>${RESET} to install it"
echo ''
echo -e "Example: ${GREEN}proot-distro install ${CYAN}kali${RESET}"
echo ''
echo -e "${RED}E${ORANGE}n${YELLOW}j${GREEN}o${CYAN}y${PURPLE}!${RESET}"