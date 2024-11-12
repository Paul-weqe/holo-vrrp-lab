#!/bin/bash 

git clone https://github.com/holo-routing/holo 
cd holo 
git checkout vrrp-rebase
git pull

# build local-holo
rm -rf docker/Dockerfile
cp -r ../Dockerfile docker/Dockerfile
docker build -t local-holo -f docker/Dockerfile .

