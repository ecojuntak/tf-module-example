#!/bin/bash

# update dependencies
sudp yum update -y

# install docker
sudo yum install docker -y
sudo systemctl enable docker.service
sudo systemctl start docker.service
