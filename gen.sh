#!/bin/bash
echo Nama Docker :
read name
echo Youtube Url :
read url
echo Port VNC :
read port
echo Proxy :
read proxy

docker container create -e URL=$url -e PROXY=$proxy -p 5900:$port --name $name --cpus=0.9 gbyt:1
docker container start $name
docker exec -i -t $name /bin/bash
