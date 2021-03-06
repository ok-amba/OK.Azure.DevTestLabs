#!/usr/bin/env bash

cd $WORKING_DIR
mkdir agent
mkdir _tmp

wget -q https://vstsagentpackage.azureedge.net/agent/2.160.1/vsts-agent-linux-x64-2.160.1.tar.gz -P _tmp

tar zxvf _tmp/vsts-agent-linux-x64-2.160.1.tar.gz -C agent
sudo chown -R build: agent

sudo agent/bin/installdependencies.sh

cd agent && source config.sh --unattended --url https://okamba.visualstudio.com --auth pat --token "$2" --pool "$1" --agent "${HOSTNAME}-agent" --acceptTeeEula
sudo ./svc.sh install
sudo ./svc.sh start

# install curl and probably libcurl4, since 
# since theres a bug in installdependencies.sh
# that favours libcurl3 instead of already-installed
# libcurl4, thus, while downgrading it, removes curl itself.
# also - i think installdependencies.sh broke apt
sudo apt --fix-broken install -y
sudo apt-get -y install curl
