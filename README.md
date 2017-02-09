# cloud-node-vip
Running keepalived etc on docker cluster

This package is used by coreos-pxe-swarm. 

It provides
- `keepalived`: To virtually switch the frontend ips
 
 
## Calling

```
docker run --cap-add=NET_ADMIN --net=host -e KEEPALIVED_PRIORITY=5 -e KEEPALIVED_INTERFACE=enp5s0 -it dermatthes/cloud-node-vip
```