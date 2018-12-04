wget -q https://vstsagentpackage.azureedge.net/agent/2.142.1/vsts-agent-linux-x64-2.142.1.tar.gz -P ~/
mkdir ~/agent

tar zxvf ~/vsts-agent-linux-x64-2.142.1.tar.gz -C ~/agent

sudo ~/agent/bin/installdependencies.sh

~/agent/config.sh --unattended --url https://okamba.visualstudio.com --auth pat --token "$2" --pool "$1" --agent "${HOSTNAME}-agent" --acceptTeeEula

sudo ~/agent/svc.sh install
sudo ./svc.sh start