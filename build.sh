#!/bin/bash 

git clone https://github.com/holo-routing/holo 
cd holo 
git checkout vrrp

mkdir docker/local
cp ../Dockerfile docker/local/.
cp ../Cargo.toml docker/local/.

# build local-holo
docker build -t local-holo -f docker/local/Dockerfile .

