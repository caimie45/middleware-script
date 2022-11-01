#!/bin/bash

##sonarqube install on centos 7
##please run this as user vagrant

user_name=`whoami`

if [ whoami != vagrant ];

then
  echo " must be run as user vagrant!!!!"
exit 1
fi
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /optsudo yum install wget -ysudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zipsudo unzip /opt/sonarqube-9.3.0.51899.zipsudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899sudo firewall-cmd --permanent --add-port=9000/tcp 
sudo firewall-cmd --reload
./sonar.sh start

echo "installation complete successfully, please get the ip adress and access your sonarqube on the browser"