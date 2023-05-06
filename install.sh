#!/bin/bash
# Install Uptime-Kuma on Repl.it
# Copyright © by 舒夏 All Rights Reserved.
# 2023/02/22 14:05
# 1. Create a new Repl.it as a Bash Server 
# 2. Update the replit.nix file to include the code in this repo
# 3. Restart the Repl
# 4. Run this command from the Replit shell:
#    bash <(curl -s https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/install.sh)
echo "准备在您的 Replit 中安装 Uptime-Kuma"
nix-env -iA nixpkgs.wget
mkdir build
cd build & wget https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/.replit
cd ..
wget -O master.zip https://github.com/louislam/uptime-kuma/archive/refs/heads/master.zip
nix-env -iA nixpkgs.unzip
unzip master.zip
npm install npm -g
cd uptime-kuma-master && npm run setup
cd ..
cp -r uptime-kuma-master uptime-kuma/
cp -r uptime-kuma-master/* . && cp -r .replit .
echo "点击Run启动Uptime-Kuma"
rm -rf uptime-kuma-master/
rm -rf index.js
