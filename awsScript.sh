#!/bin/bash

cd $HOME
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip>
sudo apt-get -y install unzip
unzip awscliv2.zip
sudo ./aws/install
aws --version
cd /Repositories/AutoDeployment2Test
sudo chmod 755 JenkinsUser.sh
sudo ./JenkinsUser.sh
