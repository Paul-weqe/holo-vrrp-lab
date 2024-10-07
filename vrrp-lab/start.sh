#!/bin/bash 

# wait for the daemons to start
sleep 2

if command -v holod; then 
  # setup interfaces 
  ifup -a
  holo-cli --file /etc/holo.startup
fi

