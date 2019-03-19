#(Ubuntu 16.04) https://www.microsoft.com/net/core#linuxubuntu
sudo wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-2.2

# Dependencies for Aspose (dotnet core drawing)
apt-get install -y --allow-unauthenticated libc6-dev libgdiplus libx11-dev