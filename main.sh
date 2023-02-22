rm install.sh
# 更改Easy-cron工作目录
ecpath=$(pwd|cut -d \/ -f4)
ecconfpath=$(cat config.yaml|grep /home/runner|awk '{print$3}'|sed 's/"//g'|cut -d \/ -f4|head -n 1)
sed -i "s/$ecconfpath/$ecpath/g" config.yaml
# 赋予Easy-cron及脚本可执行权限
chmod +x easy-cron
chmod +x dog.sh
# 启动Easy-cron
./easy-cron >/dev/null 2>&1 &
cd uptime-kuma && node server/server.js
