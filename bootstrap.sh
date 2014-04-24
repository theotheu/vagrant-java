#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo $DEBIAN_FRONTEND

apt-get update -q -y
apt-get upgrade -q -y

apt-get -y -q install curl git

# install postgress
apt-get install -q -y postgresql-9.3

# install java
### Unattented install, tnx to http://askubuntu.com/questions/190582/installing-java-automatically-with-silent-option
echo debconf shared/accepted-oracle-license-v1-1 select true |  sudo debconf-set-selections

echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections  

apt-get install -q -y apt-file && apt-file update

apt-file search add-apt-repository

apt-get install -q -y python-software-properties

echo 
echo
echo
echo Please wait...
echo
echo
echo 

apt-get install -q -y software-properties-common

apt-get update && apt-get upgrade

add-apt-repository ppa:webupd8team/java

apt-get update && sudo apt-get install -q -y oracle-jdk7-installer

update-alternatives --display java

echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle/" >> /etc/environment

# install maven
apt-get install -q -y maven

