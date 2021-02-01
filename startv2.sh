#! /bin/bash
nohup /usr/bin/v2ray/v2ray -config /etc/v2ray/config.json >/var/log/v2ray/v2ray.log 2>&1 & 