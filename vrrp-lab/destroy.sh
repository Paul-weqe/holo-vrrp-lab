#!/bin/bash 

sudo containerlab destroy --topo topology.yml
sudo ip link delete sw-host
sudo ip link delete sw1 
