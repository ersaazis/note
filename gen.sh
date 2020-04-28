#!/bin/bash
echo Nama Docker :
read name
echo APP ID :
read id
echo Port VNC :
read port
echo Proxy :
read proxy

docker container create -e id=$ID -e PROXY=$proxy -p $port:5900 --name $name --cpus=0.9 gbyt:1
docker container start $name
docker exec -i -t $name /bin/bash
