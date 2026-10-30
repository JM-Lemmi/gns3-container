#!/bin/sh

COPY --chmod=755 docker-start.sh /root/docker-start.sh

iptables-restore /etc/iptables/rules.v4
ip6tables-restore /etc/iptables/rules.v6

exec /bin/bash /usr/lib/frr/docker-start
