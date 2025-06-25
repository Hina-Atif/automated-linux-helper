#!/bin/bash

# Automated Linux Helper Script
# Created by Hina Atif

while true; do
  echo "==============================="
  echo "🛠  Linux Helper - Menu"
  echo "==============================="
  echo "1. Show Disk Usage"
  echo "2. Show Memory Usage"
  echo "3. Show Running Processes"
  echo "4. Create a File"
  echo "5. Create a Directory"
  echo "6. Exit"
  echo "==============================="

  read -p "Choose an option [1-6]: " option

  case $option in
    1) df -h ;;
    2) free -h ;;
    3) top ;;
    4) read -p "Enter filename: " fname; touch "$fname"; echo "✅ File '$fname' created." ;;
    5) read -p "Enter directory name: " dname; mkdir "$dname"; echo "✅ Directory '$dname' created." ;;
    6) echo "Goodbye! 👋"; break ;;
    *) echo "❌ Invalid option. Try again." ;;
  esac

  echo ""
  read -p "Press Enter to continue..."
done
