#!/bin/sh
iptables -t nat -A POSTROUTING -s 192.168.16.0/24 -o eth0 -j MASQUERADE
service pptpd restart
tailf /etc/sysctl.conf
