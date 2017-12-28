#!/bin/sh
#
# quickwall
# Kenneth Finnegan, 2017
#
# This script usually lives in /etc/network/if-pre-up.d/
# It sources the two lists of iptable rules in /etc/network/ and installs
# them in the system's tables

/sbin/iptables-restore < /etc/network/iptables
/sbin/ip6tables-restore < /etc/network/ip6tables

