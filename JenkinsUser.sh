#!/bin/bash

#Creates password for jenkins
sudo passwd jenkins
#Adds Jenkins to sudoers file; this is dangerous admittedly
echo 'jenkins ALL=(ALL) NOPASSWD: ALL | sudo EDITOR='tee -a' visudo
sudo su - jenkins -s /bin/bash
touch .bash_profile
echo 'export PATH=/var/lib/jenkins/.local/bin:$PATH' > .bash_profile
sudo pip install awsebcli --upgrade --user
echo "Please set up credentials in awscli at this time"
