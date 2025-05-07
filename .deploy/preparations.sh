#!/bin/bash

# 1. Check Python version
echo "[Check] Python version:"
python3 --version || { echo " Python3 not found"; exit 1; }

# 2. Check if pip is available and install (upgrade) it
echo "[Check] Checking for pip..."

if ! python3 -m pip --version >/dev/null 2>&1; then
    echo "[Missing] pip3 not found, installing it"
    apt-get install python3-pip
else
    echo "[OK] pip is present, upgrading..."
    python3 -m pip install --upgrade pip
fi


# 2.5
echo "==========================================================================================="
echo "PRINT CURR DIR"
pwd

# 3. Check if requirements.txt exists
if [ ! -f "../requirements/base.txt" ]; then
    echo " ../requirements/base.txt not found"
    exit 1
fi
echo "[Check] Found requirements.txt"

# 4. Create virtual environment if missing
if [ ! -d "~/.venv" ]; then
    echo "[Action] Creating virtual environment..."
    python3 -m venv ~/.venv
else
    echo "[Skip] Virtual environment already exists"
fi

# 5. Activate virtual environment
echo "[Action] Activating virtual environment..."
source ~/.venv/bin/activate

# 6. Install dependencies
echo "[Action] Installing dependencies..."
pip install -r ../requirements/base.txt

# 5. Deactivate virtual environment
echo "[Action] Deactivating virtual environment..."
deactivate
