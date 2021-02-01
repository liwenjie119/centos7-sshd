#!/bin/bash
cd /root/centos7-sshd
wget https://git.io/v2ray.sh
wget https://code.aliyun.com/MvsCode/frps-onekey/raw/master/install-frps.sh -O ./install-frps.sh
chmod 777 *
cp cproxy.service /usr/lib/systemd/system/cproxy.service
cp gost.service /usr/lib/systemd/system/gost.service
systemctl enable  cproxy.service
systemctl enable  gost.service



