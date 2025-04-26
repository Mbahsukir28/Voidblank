#!/bin/bash
echo "Installing dependencies..."
pkg update -y
pkg install -y git curl python
pip install requests
echo "Installation complete!"
