#!/bin/bash

# Install openjdk 11
apt update
apt install software-properties-common screen -y
add-apt-repository ppa:openjdk-r/ppa -y
apt update
apt install openjdk-11-jdk -y

# Download and run WebGoat
wget https://github.com/WebGoat/WebGoat/releases/download/v8.0.0.M24/webgoat-server-8.0.0.M24.jar
screen java -jar ./webgoat-server-8.0.0.M24.jar --server.address=192.168.169.127
