sudo mkdir install-scripts
cd install-scripts

sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-docker.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-nodejs.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-dotnetcore.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-git.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-azure-cli.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-azure-devops.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-chrome.sh
sudo curl -O https://raw.githubusercontent.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/install-sqlcmd.sh

sudo chmod +x install-*.sh

./install-docker.sh 
./install-nodejs.sh
./install-dotnetcore.sh
./install-git.sh
./install-azure-cli.sh
./install-azure-devops.sh "$@"
./install-chrome.sh
./install-sqlcmd.sh
