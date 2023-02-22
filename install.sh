#!/bin/bash
# Install uptime-kuma on Repl.it
# Copyright © by 舒夏 All Rights Reserved.
# 2023/02/22 14:05
# 1. Create a new Repl.it as a Bash Server 
# 2. Update the replit.nix file to include the code in this repo
# 3. Restart the Repl
# 4. Run this command from the Replit shell:
#    bash <(curl -s https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/install.sh)
echo "准备在您的 Replit 中安装 uptime-kuma"
echo "您是否确保在运行此脚本之前配置了 replit.nix和.replit文件？"
nix-env -iA nixpkgs.wget
git clone https://github.com/sxbai/Uptime-Kuma-on-replit.git
mv Uptime-Kuma-on-replit/* .
rm -rf Uptime-Kuma-on-replit/
wget -O .replit https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/.replit
wget -O replit.nix https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/replit.nix
git clone https://github.com/louislam/uptime-kuma.git
npm install npm -g && cd uptime-kuma
npm run setup && cd ..
bash main.sh
