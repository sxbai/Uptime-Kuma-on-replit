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
dir=$(ls -lt /home/runner/upbo | awk '/^d/ {print $NF}')
# 顺序获取/jack下面所有的文件,=号左右两边不要有空格
dir=$(ls -lt /jack/ | awk '/^d/ {print $NF}')
# 循环每个文件
for i in $dir
do
    # 输出每个文件夹名，do里面不可为空，赋值语句也可。
    echo $i
done

# 将字符串转换成数组-根据空格
# arr=(${dir//A/}) 网友提出错误, 这个//A/是将A替换成空格 会有问题 改成如下:
arr=(${dir})
# 数组--输出数组最后一个元素
echo ${arr[${#arr[@]}-1]}
# 数组--进入第一个文件夹
cd ${arr[0]}
# for循环，或者数组用一个即可。
npm run setup
echo "恭喜安装 uptime-kuma完成"
echo "点击Run运行脚本即可"
wget -O main.sh https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/main.sh && bash main.sh
