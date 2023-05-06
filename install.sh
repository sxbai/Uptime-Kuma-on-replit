echo "准备在您的 Replit 中安装 Uptime-Kuma"
mkdir build
cd build & wget https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/.replit
cd ..
wget -O master.zip https://github.com/louislam/uptime-kuma/archive/refs/heads/master.zip && unzip master.zip
npm install npm -g
cd uptime-kuma-master && npm run setup
cd ..
cp -r uptime-kuma-master uptime-kuma/
cp -r uptime-kuma-master/* . && cp -r build/.replit .
echo "点击Run启动Uptime-Kuma"
rm -rf uptime-kuma-master/
rm -rf index.js
