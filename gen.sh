#!/bin/bash
echo Nama Docker :
read name
echo Youtube Url :
read url
echo Port VNC :
read port
echo Proxy :
read proxy

echo ini urlnya $url
docker container create -e URL='$url' -e PROXY='$proxy' -p 5900:$port --name $name --cpus=1 gbyt:1
docker container start $name
docker exec -i -t $name /bin/bash
