#!/bin/bash


docker rm -t cloud-node-vip
docker build -t cloud-node-vip .
echo "Starting image in interactive mode...";
docker run --cap-add=NET_ADMIN --net=host -e KEEPALIVED_PRIORITY=5 -e VIP_IP=10.19.0.5/24 -e VIP_GW=10.19.0.1 -it cloud-node-vip

echo "Image closed...";