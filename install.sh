#!/usr/bin/env bash
# ==============================================================================
# proot-distro-extras: Standalone Installer
# ==============================================================================
# Adds extra distributions to proot-distro and enables "hax" distros.
# Usage:
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/install.sh)"
# ==============================================================================

set -euo pipefail

# --- Configuration ---
REPO_OWNER="ManiacBoy777"
REPO_NAME="proot-distro-extras"
BRANCH="master"
BASE_URL="https://raw.githubusercontent.com/$REPO_OWNER/$REPO_NAME/$BRANCH"
TARGET_FILE="${PREFIX:-/data/data/com.termux/files/usr}/bin/proot-distro"
DISTRO_DIR="${PREFIX:-/data/data/com.termux/files/usr}/etc/proot-distro"

# --- Colors ---
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
RESET='\033[0m'

# --- Utility Functions ---
log_info() { echo -e "${CYAN}[INFO]${RESET} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${RESET} $1"; }
log_warn() { echo -e "${YELLOW}[WARN]${RESET} $1"; }
log_error() { echo -e "${RED}[ERROR]${RESET} $1"; exit 1; }

# --- Installation Steps ---

check_proot_distro() {
    if [[ ! -f "$TARGET_FILE" ]]; then
        log_info "proot-distro not found. Installing..."
        pkg install proot-distro -y || log_error "Failed to install proot-distro."
    fi
}

patch_proot_distro() {
    log_info "Patching proot-distro to enable extra distributions..."
    # Comment out the restriction block for "hax" distros
    if grep -q "kali|parrot|nethunter|blackarch" "$TARGET_FILE"; then
        sed -i '/if grep -qiP '\''(kali|parrot|nethunter|blackarch)'\'' <<< "$distro_name"/,/fi/ s/^/#/' "$TARGET_FILE"
        log_success "proot-distro patched successfully."
    else
        log_warn "Restriction block not found or already patched."
    fi
}

install_distro_configs() {
    log_info "Downloading extra distribution configurations..."
    mkdir -p "$DISTRO_DIR"
    
    local distros=("kali" "nethunter" "centos" "parrot")
    for distro in "${distros[@]}"; do
        log_info "Downloading $distro config..."
        curl -fsSL "$BASE_URL/releases/$distro.sh" -o "$DISTRO_DIR/$distro.sh" || log_warn "Failed to download $distro config."
    done
}

# --- Main Execution ---

log_info "Starting proot-distro-extras installation..."

check_proot_distro
patch_proot_distro
install_distro_configs

echo -e "\n${GREEN}proot-distro-extras${RESET} is now installed!\n"
echo -e "The following extra distros are now available:"
echo -e "${CYAN}  - kali\n  - nethunter\n  - parrot\n  - centos${RESET}\n"
echo -e "Type ${GREEN}proot-distro list${RESET} to see all available distributions."
echo -e "Install one with: ${GREEN}proot-distro install ${CYAN}<alias>${RESET}\n"
log_warn "Note: This patch may need to be reapplied after proot-distro updates."
echo -e "${RED}E${YELLOW}n${GREEN}j${CYAN}o${PURPLE}y${RED}!${RESET}"
