#!/bin/bash

# Install openjdk 11
apt update
apt install software-properties-common -y
add-apt-repository ppa:openjdk-r/ppa
apt update
apt install openjdk-11-jdk -y

# Download and run WebGoat
wget https://github.com/WebGoat/WebGoat/releases/download/v8.0.0.M24/webgoat-server-8.0.0.M24.jar
java -jar ./webgoat-server-8.0.0.M24.jar
