#!/usr/bin/env bash
curl -fsSL "https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/releases/kali.sh" -o $PREFIX/etc/proot-distro/kali.sh

echo proot-distro-extras is now installed!
echo ''
echo ''
echo ''
echo Type 'proot-distro list' to show a list of all available distributions
echo then type 'proot-distro install <alias>' to install it
echo ''
echo Example: proot-distro install kali
echo ''
echo enjoy!