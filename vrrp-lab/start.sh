#!/bin/bash 

# wait for the daemons to start
sleep 2

if command -v holod || command -v /usr/lib/frr/zebra; then 
  # setup interfaces 
  ifup -a

  if command -v holod; then 
    # Load holod startup configs
    holo-cli --file /etc/holo.startup
  elif command -v /usr/lib/frr/zebra; then 
    # Load FRR startup configs 
    vtysh -f /etc/frr/frr.startup
  fi

fi

