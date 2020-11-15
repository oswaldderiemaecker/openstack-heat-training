#!/bin/bash

# Params: Public IP and Private IP
# ./setup.sh 100.25.129.241 172.31.65.77

HOME_USER=/home/centos

cd $HOME_USER
git clone https://github.com/oswaldderiemaecker/openstack-training-on-aws.git

cd $HOME_USER/openstack-training-on-aws

chown -R centos:centos $HOME_USER/openstack-training-on-aws

source /root/keystonerc_admin && ./ip-change.sh 34.224.228.250 $1 172.31.36.180 $2

yum update -y
yum install -y epel-release
yum install -y nodejs
node --version
