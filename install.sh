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
echo "- Step 2: Run Nginx container on port 80 with your code inside"
echo "- Step 3: Run Certbot to generate SSL Certificates to your Nginx container"
echo "- Step 4: Re-configure Nginx container with new SSL"
echo "- Step 5: Update new source code by re-run all container"
echo "-------------------------------------------------------------------------"
echo
options=(
    "Step 1: Install Docker" #1
    "Step 2: Run Nginx container" #2
    "Step 3: Run Certbot container" #3
    "Step 4: Re-configure Nginx" #4
    "Step 5: Rebuild new source code" #4
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
        "${options[4]}")
            clear; step_5;;
        *) echo "Invalid input. Please try again with valid number from 1-${#options[@]}[Ctrl+C to exit]: "; continue;;
    esac
done