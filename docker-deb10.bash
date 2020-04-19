# install docker debian10 test
apt update &&  apt full-upgrade -y
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    htop \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y
