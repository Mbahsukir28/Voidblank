#!/bin/bash
clear
echo -e "\033[1;35m"
cat << "EOF"
██    ██  ██████  ██ ██████  ██ ███    ██ ████████ 
██    ██ ██    ██ ██ ██   ██ ██ ████   ██    ██    
██    ██ ██    ██ ██ ██████  ██ ██ ██  ██    ██    
 ██  ██  ██    ██ ██ ██   ██ ██ ██  ██ ██    ██    
  ████    ██████  ██ ██   ██ ██ ██   ████    ██    
EOF
echo -e "\033[0m"
echo "Void OSINT - Real Version"
echo ""
echo "[1] Lacak Nomor HP"
echo "[0] Exit"
read -p "Pilih opsi: " pilihan

if [ "$pilihan" = "1" ]; then
    read -p "Masukkan nomor HP (contoh: 6281234567890): " nomor
    api_key="a41f15e7eb094eabb3b13a1c5f09b80d"
    response=$(curl -s "https://api.apilayer.com/number_verification/validate?number=$nomor" -H "apikey: $api_key")
    echo "Hasil Lacak:"
    echo "$response"
elif [ "$pilihan" = "0" ]; then
    echo "Keluar..."
    exit
else
    echo "Opsi tidak valid."
fi
