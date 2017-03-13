# cloud-node-vip
Running keepalived etc on docker cluster

This package is used by coreos-pxe-swarm. 

It provides
- `keepalived`: To virtually switch the frontend ips
 
 
## Calling

```
echo 1 > /proc/sys/net/ipv4/ip_nonlocal_bind
docker run --cap-add=NET_ADMIN --net=host -e KEEPALIVED_PRIORITY=5 -e KEEPALIVED_INTERFACE=enp5s0 -e VIP_IP=10.19.0.5/24 -e VIP_GW=10.19.0.1 -it dermatthes/cloud-node-vip
```


## Firewall 

Make sure to allow vrrp and multicast traffic:

```
-I INPUT -d 224.0.0.0/8 -p vrrp -j ACCEPT
-I OUTPUT -d 224.0.0.0/8 -p vrrp -j ACCEPT
-I INPUT -p vrrp -j ACCEPT
```