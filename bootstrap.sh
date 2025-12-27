#!/bin/bash

echo "🚀 Starting Ansible Kickstart Environment Setup..."

# 1. Create Virtual Environment
if [ ! -d ".venv" ]; then
    echo "📦 Creating virtual environment..."
    python3 -m venv .venv
else
    echo "✅ Virtual environment already exists."
fi

# 2. Activate venv and install dependencies
echo "🛠 Installing Python dependencies..."
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

# 3. Install Ansible Collections
echo "🌌 Installing Ansible collections..."
ansible-galaxy collection install -r requirements.yml -p ./ansible_collections

# 4. Success message
echo "------------------------------------------------"
echo "🎉 Setup Complete!"
echo "To start working, run: source .venv/bin/activate"
echo "------------------------------------------------"