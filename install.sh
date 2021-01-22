#!/bin/bash
# Include required files
. scripts/controller/main_controller   # Route

# Define color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
PLAIN='\033[0m'

# Global Variable
nginx_dir="nginx"
source_dir="nginx/build"


echo "========================================================================="
echo "                             AUTOMATION SCRIPT                           "
echo "-------------------------------------------------------------------------"
echo "Author: Anh Quach"
echo "Contact information:"
echo "- https://facebook.com/tuananh.qaa"
echo "- https://github.com/sheid1309"
echo "-------------------------------------------------------------------------"
echo "Please follow below guides:"
echo "- Step 1: Install Docker to your machine"
echo "- Step 2: Run Nginx container and generate SSL with Certbot"
echo "- Step 3: Re-configure Nginx container with new SSL and Auto Renewal"
echo "- Step 4: Update new source code by re-run all container"
echo "-------------------------------------------------------------------------"
echo
options=(
    "Step 1: Install Docker" #1
    "Step 2: Generate SSL" #2
    "Step 3: Run Nginx with SSL and Auto Renewal" #3
    "Step 4: Update new source code" #4
)

prompt="Please enter your choice (1-${#options[@]})[Ctrl+C to exit]: "
PS3=$prompt

select opt in "${options[@]}"
do
    case $opt in
        "${options[0]}")
            clear; step_1;;
        "${options[1]}")
            clear; step_2;;
        "${options[2]}")
            clear; step_3;;
        "${options[3]}")
            clear; step_4;;
        *) echo "Invalid input. Please try again with valid number from 1-${#options[@]}[Ctrl+C to exit]: "; continue;;
    esac
done