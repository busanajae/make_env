#!/bin/bash

### 시냅틱 패키지 관리자
sudo apt-get install synaptic
# 실행: sudo synaptic

### aptitude 패키지 관리자
#sudo apt install aptitude

### c & cpp compiler
sudo apt install gcc
sudo apt install g++

# cmake 환경변수 추가
sudo apt install automake
sudo apt-get install cmake

echo 'export CC=/usr/bin/gcc' >> ~/.bashrc
echo 'export CXX=/usr/bin/g++' >> ~/.bashrc

