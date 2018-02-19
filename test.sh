#!/bin/bash
apt-get update && apt-get isntall curl -y

cd / && mkdir nodejs && cd nodejs && mkdir node_logs  && mkdir temp
      echo "done created directory" > /opt/steps.txt

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - ### Node 6
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    echo "done install modules" > /opt/steps.txt
apt update && apt install mc htop nagios-nrpe-server snmpd nagios-plugins lshw iptraf rcconf zabbix-agent nginx curl memcached mongodb-org nodejs curl zsh git-core -y

#StackDrive#
curl -sSO https://repo.stackdriver.com/stack-install.sh
bash stack-install.sh --write-gcm


cd /root && npm isntall agentkeepalive && npm install async && npm install blowfish && npm install cookies && npm install maxmind && npm install memcached && npm install mongodb && npm install mysql ## check npm
    echo "done npm" > /opt/steps.txt
    npm install forever -g
    echo "done forever" > /opt/steps.txt

curl -L http://install.ohmyz.sh | sh
echo "done mongo" > /opt/steps.txt
wget -O aerospike.tgz 'https://www.aerospike.com/download/server/latest/artifact/ubuntu16'
tar -xvf aerospike.tgz
cd aerospike-server-community-*-ubuntu16*
./asinstall
service aerospike start
echo "done aerospike" > /opt/steps.txt
echo " all done,!!!WARNING!!! server restart automatically after 10 seconds, check all the settings, or press Ctrl+C to abort the script" > /opt/steps.txt
