#!/bin/bash

# Params: Public IP and Private IP

git clone https://github.com/oswaldderiemaecker/openstack-training-on-aws.git

cd /home/centos/openstack-training-on-aws
./ip-change.sh 34.224.228.250 $1 172.31.36.180 $2
