#!/usr/bin/env bash
#install npm & nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# dependency for puppeteer
sudo apt-get install -y libgbm-dev
