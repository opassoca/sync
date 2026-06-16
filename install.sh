#!/bin/bash
set -e
echo "◈ SYNC - Master Installer ◈"

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Install Master Panel first
echo "[*] Installing Master: Auth..."
cd "$PROJECT_DIR/auth" && ./install.sh

# 2. Install Consumers
echo "[*] Installing Consumer: Agy3..."
cd "$PROJECT_DIR/agy3" && ./install.sh

echo "[*] Installing Consumer: GMNA..."
cd "$PROJECT_DIR/gmna" && ./install.sh

echo ""
echo "✨ SYNC Sync Installed Successfully!"
echo "◈ Commands: auth, oauth, agy3, gmna"
echo "------------------------------------------------"
