#!/bin/bash
java -version
 
sudo apt update
 
sudo apt install openjdk-11-jdk -y
 
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
 
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
 
sudo apt update
 
sudo apt install jenkins -y
 
#downgrade java if necessary
sudo update-alternatives --config java 
 
firefox http://localhost:8080
 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
