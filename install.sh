#!/bin/bash

sudo yum install epel-release -y 
sudo yum update -y
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx