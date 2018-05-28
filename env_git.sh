#!/bin/bash

# git
#sudo apt install -y git
#sudo apt install -y gitk
# git는 gitg를 설치하는 것으로 대체한다.
# gitg가 텍스트가 잘 안 보이는 관계로 '그놈 기능 개선'을 설치한다.

# nodejs 
#sudo apt install curl
#sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs

# npm
#sudo apt install -y npm

# ungit
#sudo npm install -g ungit

#echo 'nodejs version:'
#nodejs --version
#echo 'npm version:'
#npm -version

# Setting
git config --global user.name "BusanAjae"
git config --global user.email "busanajae@gmail.com"
cd
mkdir .ssh
cd .ssh
ssh-keygen

# Check operations
clear
cat id_rsa.pub
git --version
git config --global --list
