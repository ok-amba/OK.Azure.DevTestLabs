#!/usr/bin/env bash
#(Ubuntu 16.04) https://www.microsoft.com/net/core#linuxubuntu
sudo wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-2.2
sudo apt-get install -y dotnet-sdk-3.0
sudo apt-get install -y dotnet-sdk-3.1

# Dependencies for Aspose (dotnet core drawing)
sudo apt-get install -y --allow-unauthenticated libc6-dev libgdiplus libx11-dev

# Install EF Core CLI
sudo dotnet tool install --global dotnet-ef --version 3.1

# Install report generator
sudo dotnet tool install -g dotnet-reportgenerator-globaltool
