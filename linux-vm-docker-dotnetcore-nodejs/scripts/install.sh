#!/usr/bin/env bash

#set vars
PARMS=${1?Error: No paramters given - specify pool and token}
export WORKING_DIR="/opt/buildagent"

sudo chmod +x install-*.sh

./install-docker.sh 
#read -p "Press enter to install nodejs"
./install-nodejs.sh
#read -p "Press enter to install dotnetcore"
./install-dotnetcore.sh
#read -p "Press enter to install git"
./install-git.sh
#read -p "Press enter to install azure-cli"
./install-azure-cli.sh
#read -p "Press enter to install azure-devops"
./install-azure-devops.sh "$1" "$2"
#read -p "Press enter to install chrome"
./install-chrome.sh
#read -p "Press enter to install sqlcmd"
./install-sqlcmd.sh
#read -p "Press enter to install maven"
./install-maven.sh
