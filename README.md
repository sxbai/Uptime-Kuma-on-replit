# 使用说明
欢迎Fork本项目，Uptime-Kuma-on-replit

搭建命令行 (环境选择`Node.js`) [从上到下依次输入命令并回车]
```bash
nix-env -iA nixpkgs.wget
```

```bash
nix-env -iA nixpkgs.unzip
```
```bash
mkdir build
```
```bash
cd build & wget https://raw.githubusercontent.com/sxbai/Uptime-Kuma-on-replit/master/.replit
```
```bash
cd ..
```
```bash
wget -O master.zip https://github.com/louislam/uptime-kuma/archive/refs/heads/master.zip && unzip master.zip
```
```bash
npm install npm -g
```
```bash
cd uptime-kuma-master && npm run setup
```
```bash
cd ..
```
```bash
cp -r uptime-kuma-master uptime-kuma/
```
```bash
cp -r uptime-kuma-master/* . && cp -r build/.replit .
```
```bash
rm -rf uptime-kuma-master/
```
```bash
rm -rf index.js
```
[从上到下依次输入命令并回车]
