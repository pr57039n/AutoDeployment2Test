#!/bin/bash

if [ $UID != 0]; then
        echo "Not an admin, exiting out"
        exit 1
fi
sudo apt-get update -y
sudo apt -y install openjdk-11-jre
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/>
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkin>
sudo apt-get update
sudo apt-get -y install jenkins
sudo systemctl start jenkins

sudo apt-get install python3pip -y &&  sudo apt-get install python3.10-venv -y
sudo apt-get install git -y
cd /
sudo mkdir Repositories
cd Repositories
git clone https://https://github.com/pr57039n/AutoDeployment2Test.git
cd ./AutoDeployment2Test
sudo chmod 755 awsScript.sh
sudo ./awsScript.sh
