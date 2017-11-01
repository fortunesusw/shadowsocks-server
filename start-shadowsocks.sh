#!/bin/bash
ssserver -c /etc/shadowsocks.json -d start
iptables -F
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 8388 -j ACCEPT
