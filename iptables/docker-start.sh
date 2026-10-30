#!/bin/sh

# Startup script for iptables container

sysctl -w net.ipv4.ip_forward=1           >/dev/null 2>&1 || true
sysctl -w net.ipv6.conf.all.forwarding=1  >/dev/null 2>&1 || true

iptables-restore /etc/iptables/rules.v4
ip6tables-restore /etc/iptables/rules.v6

exec /bin/bash -l
