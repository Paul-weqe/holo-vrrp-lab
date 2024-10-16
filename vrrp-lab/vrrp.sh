#!/bin/sh 

# Wait for the daemons to start
sleep 5

if command -v /usr/lib/frr/zebra; then
  # manually create the macvlan interfaces
  ip link add vrrp4-51 link eth-sw1 type macvlan mode bridge
  ip link set dev vrrp4-51 address 00:00:5e:00:01:33
  ip addr add 10.0.1.5/24 dev vrrp4-51
  ip link set dev vrrp4-51 up
fi
