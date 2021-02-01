#!/usr/bin/expect
spawn bash v2ray.sh
set timeout -1
expect "默认密码"
send "\r"
expect "gost端口"
send "\r"
expect "默认国内源"
send "\r"
expect eof
