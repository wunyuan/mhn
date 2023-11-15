#!/bin/bash

# Install MongoDB for Ubuntu 22.04

set -e
set -x

apt update

#apt install -y wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release
#curl -fsSL https://www.mongodb.org/static/pgp/server-3.6.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-3.6.gpg
#echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
#apt update
#wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.13_amd64.deb
#dpkg -i ./libssl1.0.0_1.0.2n-1ubuntu5.13_amd64.deb

wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb
dpkg -i ./libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb

#apt update
#apt install -y mongodb-org

#systemctl start mongod
#systemctl enable mongod

#apt-get install gnupg curl
#curl -fsSL https://pgp.mongodb.com/server-5.0.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-server-5.0.gpg
#echo "deb [ arch=amd64,arm64 signed-by=/etc/apt/trusted.gpg.d/mongodb-server-5.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

#If your server is DL380G7, please install mongodb4.4. Due to mongodb5 need a server supported AVX cpu instruction.
sudo apt-get install gnupg curl
curl -fsSL https://pgp.mongodb.com/server-4.4.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-server-4.4.gpg
echo "deb [ arch=amd64,arm64 signed-by=/etc/apt/trusted.gpg.d/mongodb-server-4.4.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list


apt update


apt install -y mongodb-org

systemctl start mongod
systemctl enable mongod







