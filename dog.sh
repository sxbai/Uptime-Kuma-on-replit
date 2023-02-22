#!/bin/bash
. /etc/profile
LOGTIME=$(date "+%Y-%m-%d %H:%M:%S")
CURRENT_DIR=$(cd $(dirname $0); pwd)
nginx_pid=$(ps -ef|grep node server/server.js|grep -v grep|awk '{print $2}')

start_nginx()
    {
       node server/server.js 2>&1 &
}
stop_nginx()      
    {              
       kill $nginx_pid
}
reload_nginx()      
    {              
       node server/server.js -s reload 2>&1 &
}

check_nginx()
    { 
           if [ ! -n "$nginx_pid" ]; then
           $CURRENT_DIR/dog.sh start_nginx
           nginx_pid_new=$(ps -ef|grep node server/server.js|grep -v grep|awk '{print $2}')
           echo [$LOGTIME] Starting Nginx ...
           echo [$LOGTIME] $nginx_pid_new Nginx
else
        echo [$LOGTIME] $nginx_pid Nginx
fi
}

check()
    {
        check_nginx
        rm -rf $CURRENT_DIR/easy-cron-log
}

INPUT=$1
if [ -z "$1" ]
then    
check
else     
case "$INPUT" in
start_nginx) start_nginx;;
stop_nginx) stop_nginx;;
reload_nginx) reload_nginx;;
check_nginx) check_nginx;;
esac
fi