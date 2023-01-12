#!/bin/bash
# Install uptime-kuma on Repl.it
# Copyright © by 舒夏 All Rights Reserved.
# 2023/01/12 12:05
# 1. Create a new Repl.it as a Bash Server 
# 2. Update the replit.nix file to include the code in this repo
# 3. Restart the Repl
# 4. Run this command from the Replit shell:
#    bash <(curl -s https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/install.sh)
echo "准备在您的 Replit 中安装 uptime-kuma"
echo "您是否确保在运行此脚本之前配置了 replit.nix和.replit文件？"
git clone https://github.com/louislam/uptime-kuma.git
cd uptime-kuma && npm run setup
curl -s https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/main.sh
echo "恭喜安装 uptime-kuma完成"
echo "点击Run运行脚本即可"
