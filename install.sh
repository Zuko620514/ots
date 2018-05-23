#!/bin/bash

yum clean all
yum install vim -y
yum install epel-release -y 
yum update -y
yum install nginx -y
systemctl enable nginx
systemctl start nginx
#installing dependencies
yum install gcc gcc-c++ make libtool git ntp -y
yum install openssl-devel readline-devel libevent-devel libyaml-devel zlib-devel -y
mkdir ~/sources 
#ruby install
cd ~/sources
curl -O https://cache.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p362.tar.bz2
tar xjf ruby-1.9.3-p362.tar.bz2
curl -O https://bugs.ruby-lang.org/attachments/download/3707/out.patch
yum install patch -y
patch ./ext/openssl/ossl_pkey_ec.c < out.patch
./configure && make
make install
yum install rubygems-devel -y
gem install bundler
cd ~/sources
#redis install
curl -O http://download.redis.io/releases/redis-3.2.9.tar.gz
tar zxf redis-3.2.9.tar.gz
cd redis-3.2.9
make
make install
adduser ots
mkdir /etc/onetime
chown ots /etc/onetime
