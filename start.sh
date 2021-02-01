#! /bin/bash
cd /root/centos7-sshd
#wget cdn.jsdelivr.net/gh/lhz-download/1@master/cproxy
chmod +x cproxy
./cproxy -l 8080 -m muxinghe -d
echo -e "圣子搭建成功，请修改圣子模式替换为你对应映射的外网端口"
exit
