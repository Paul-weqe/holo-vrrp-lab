#!/bin/bash 

git clone https://github.com/holo-routing/holo 
cd holo 
git checkout vrrp-rebase
git pull

# build local-holo
docker build -t local-holo -f docker/Dockerfile .

