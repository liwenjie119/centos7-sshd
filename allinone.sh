#!/bin/bash
cd /root/centos7-sshd
wget https://git.io/v2ray.sh
wget https://raw.githubusercontent.com/MvsCode/frps-onekey/master/install-frps.sh
chmod 777 *
cp cproxy.service /usr/lib/systemd/system/cproxy.service
cp gost.service /usr/lib/systemd/system/gost.service
systemctl enable  cproxy.service
systemctl enable  gost.service
#bash v2autoinstall.sh
#bash gostauto.sh


