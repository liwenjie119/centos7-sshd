#!/bin/bash
wget https://git.io/v2ray.sh
wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/v2autoinstall.sh
wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/builds.sh
wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/tinyautoinstall.sh
chmod 777 *.sh
bash v2autoinstall.sh
bash tinyautoinstall.sh

