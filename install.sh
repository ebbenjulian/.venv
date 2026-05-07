#!/usr/bin/env bash
set -e

clear

echo "======================================"
echo "   NextStage Environment Installer"
echo "      Designed by IStoleYourKill"
echo "======================================"
echo ""

echo "[1/6] Creating virtual environment..."
python3 -m venv .venv --without-pip

echo "[2/6] Activating virtual environment..."
source .venv/bin/activate

echo "[3/6] Downloading pip..."
curl -sS https://bootstrap.pypa.io/get-pip.py -o get-pip.py

echo "[4/6] Installing pip..."
python get-pip.py

echo "[5/6] Installing MariaDB Python connector..."
pip install --only-binary=:all: mariadb

echo "[6/6] Installing project requirements..."
pip install -r requirements.txt

echo ""
echo "======================================"
echo " Installation completed successfully!"
echo "======================================"
