#!/bin/bash
echo Nama Docker :
read name
echo Youtube Url :
read url
echo Port VNC :
read port

echo ini urlnya $url
docker container create -e URL='$url' -p 5900:$port --name $name --cpus=1 --memory="450m" --memory-swap="1g" gbyt:1
docker container start $name
docker exec -i -t $name /bin/bash
