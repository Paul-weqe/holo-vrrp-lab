#!/bin/bash 
sudo ip link add sw1 type bridge
sudo ip link set dev sw1 up
sudo ip link set sw1 type bridge mcast_snooping 0

sudo containerlab deploy
sudo ip addr add 10.0.1.3/24 dev sw-host 
