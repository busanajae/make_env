#!/bin/bash

# OpenJava remove
#sudo apt-get autoremove -y openjdk-8-jre
#sudo apt-get purge -y openjdk*

# Oracle JDK
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

# Jenkins
#wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
#sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
#sudo apt-get update
#sudo apt-get install -y jenkins

# Confirm
clear
javac -version
java -version
echo 'connect localhost:8080 via browser to check Jenkins'
