#!/bin/sh

## Update packages
sudo apt update -y

## Install docker
curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
sudo sh /tmp/get-docker.sh

## Configure docker service
sudo systemctl enable docker
sudo systemctl start docker

sudo groupadd docker
sudo usermod -aG docker $USER

## Setup docker service (with swarm)
docker swarm init
docker service create --replicas 1 --detach --publish 80:80 --name webserver nginxdemos/hello:0.3
