#!/bin/bash 

sudo ip link add sw1 type bridge
sudo ip link set dev sw1 up

sudo containerlab deploy --topo topology.yml
sudo ip addr add 10.0.1.3/24 dev sw-host 
