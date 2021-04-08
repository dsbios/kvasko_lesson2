#!/bin/bash

echo $MY_NAME >> /usr/share/nginx/html/index.html

mkdir 1

if [ $? == 0 ]
then
  echo "Starting nginx"
  nginx -g "daemon off;"
fi
