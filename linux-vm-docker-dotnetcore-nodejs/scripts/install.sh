sudo mkdir install-scripts
cd install-scripts

sudo curl -O https://github.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/linux/install-docker.sh
sudo curl -O https://github.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/linux/install-nodejs.sh
sudo curl -O https://github.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/linux/install-dotnetcore.sh
sudo curl -O https://github.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/linux/install-git.sh
sudo curl -O https://github.com/ok-amba/OK.Azure.DevTestLabs/master/linux-vm-docker-dotnetcore-nodejs/scripts/linux/install-azure-cli.sh

sudo chmod +x install-docker.sh
sudo chmod +x install-nodejs.sh
sudo chmod +x install-dotnetcore.sh
sudo chmod +x install-git.sh
sudo chmod +x install-azure-cli.sh

./install-docker.sh 
./install-nodejs.sh
./install-dotnetcore.sh
./install-git.sh
./install-azure-cli.sh
