#!bin/bash

sudo yum install epel-release -y 
sudo yum update 
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx