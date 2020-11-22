#!/usr/bin/expect
spawn bash builds.sh
set timeout 3000
expect "请输入选项"
send "\r"
expect "请选择项目"
send "1\r"
expect "后台运行吗"
send "\r"
expect "请输入TinyProxy端口"
send "10002\r"
expect "请输入TinyProxy代理头域"
send "\r"
expect "server port"
send "10001\r"
expect "proxy header"
send "\r"
set timeout 300000
interact

