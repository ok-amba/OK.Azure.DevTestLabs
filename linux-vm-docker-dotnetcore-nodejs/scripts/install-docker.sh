#prepare & install docker engine (https://docs.docker.com/compose/install)
sudo apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y --no-install-recommends docker-ce docker-ce-cli containerd.io

#update permissions to allow current user run docker commands without sudo
#awk -F':' '{ sudo gpasswd -a $1 docker ; print $1 }' /etc/passwd
sudo gpasswd -a $USER docker
sudo service docker restart
sudo chmod 777 /var/run/docker.sock
#sudo systemctl docker restart


#install docker-compose
#version needs to be updated with every major release of docker-compose 

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
