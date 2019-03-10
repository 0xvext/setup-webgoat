#!/bin/bash

# setup-webgoat.sh
# Tested working on Ubuntu 16.04 2019-03-10

# Install add-apt-repository, screen, and openjdk 11
apt update
apt install software-properties-common screen -y
add-apt-repository ppa:openjdk-r/ppa -y
apt update
apt install openjdk-11-jdk -y

# Download and run WebGoat (change IP to the interface to serve on)
wget https://github.com/WebGoat/WebGoat/releases/download/v8.0.0.M24/webgoat-server-8.0.0.M24.jar
screen java -jar ./webgoat-server-8.0.0.M24.jar --server.address=192.168.169.127
