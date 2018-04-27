#!/bin/bash

# vim
sudo apt-get update
sudo apt-get install -y vim-gnome

# git
#sudo apt install -y git
sudo apt install -y gitk

# nodejs 
sudo apt install curl
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# npm
sudo apt install -y npm

# ungit
sudo npm install -g ungit

# OpenJava remove
sudo apt-get autoremove -y openjdk-8-jre
sudo apt-get purge -y openjdk*

# Oracle JDK
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

# Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

# Chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo rm *.deb

# APM install
#sudo apt-get install -y apache2
#sudo apt install -y mariadb-server
#sudo add-apt-repository ppa:ondrej/apache2
#sudo apt-get update
#sudo apt-get install -y php7.0 php7.0-common
#sudo apt-get install -y php7.0-mysql php7.0-curl php7.0-xml php7.0-zip php7.0-gd php7.0-mbstring php7.0-mcrypt
#sudo apt-get install -y phpmyadmin

# Settings
sudo apt-get autoremove -y
git config --global user.name "BusanAjae"
git config --global user.email "busanajae@gmail.com"
cp .vimrc ~/.
clear
cd
mkdir .ssh
cd .ssh
ssh-keygen

# Check operations
cat id_rsa.pub
cd
javac -version
java -version
git --version
git config --global --list
echo 'nodejs version:'
nodejs --version
echo 'npm version:'
npm -version
python --version
python3 --version
echo 'connect localhost:8080 via browser to check Jenkins'

