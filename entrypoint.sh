#!/bin/bash

#configure
sed -i -e "2c\\\"server_port\": ${APP_PORT},"  /root/conf
sed -i -e "3c\\\"password\": \"${APP_PW}\"," /root/conf
sed -i -e "5c\\\"method\": \"${APP_ALG}\","  /root/conf

#start
/usr/local/bin/research -c /root/conf
