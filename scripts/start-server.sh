#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
cd /home/ubuntu/sponge-server
sudo fuser -k -n tcp 8080 || true
nohup java -jar project.jar > ./output.log 2>&1 &
echo "--------------- 서버 배포 끝 -----------------"