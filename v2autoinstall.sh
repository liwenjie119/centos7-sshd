#!/usr/bin/expect
spawn bash v2ray.sh
set timeout -1
expect "请选择"
send "1\r"
expect "默认协议"
send "2\r"
expect "默认端口"
send "10002\r"
expect "默认"
send "\r"
expect "默认"
send "\r"
expect "继续"
send "\r"
expect eof
