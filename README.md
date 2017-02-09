# cloud-node-vip
Running keepalived etc on docker cluster

This package is used by coreos-pxe-swarm. 

It provides
- `keepalived`: To virtually switch the frontend ips
 
 
## Calling

```
docker run --net local --privileged
```