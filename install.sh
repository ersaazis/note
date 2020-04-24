#!/bin/bash
apt update &&  apt full-upgrade --no-install-recommends --no-install-suggests -y
apt-get install apt-transport-https ca-certificates curl gnupg-agent htop software-properties-common -y 
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - 
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y 
mkdir docker
wget https://raw.githubusercontent.com/ersaazis/note/master/gb-youtube.dockerfile -O ${HOME}/docker/Dockerfile
wget https://github.com/ersaazis/note/raw/master/data.zip
unzip data.zip
rm data.zip
mv data docker
wget https://raw.githubusercontent.com/ersaazis/note/master/run.sh -O ${HOME}/docker/run.sh
docker build -t gbyt:1 ${HOME}/docker/
wget https://github.com/ersaazis/note/blob/master/gen.sh
chmod +x gen.sh
./gen.sh
