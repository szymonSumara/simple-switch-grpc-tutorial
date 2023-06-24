# przed 
```sh
mininet> pingall
*** Ping: testing ping reachability
h1 -> X h3 
h2 -> X h3 
h3 -> h1 h2 
*** Results: 33% dropped (4/6 received)
mininet> 
```

# z 2 terminala
```sh
p4@p4:~/simple-switch-grpc-tutorial/my_tutorials/exercises/api$ sudo python3 mycontroller.py
Installed ingress tunnel rule on s1

----- Reading tables rules for s1 -----
MyIngress.ipv4_lpm:  hdr.ipv4.dstAddr (b'\n\x00\x01\x01', 32) -> MyIngress.ipv4_forward dstAddr b'\x08\x00\x00\x00\x01\x11' port b'\x01' 
MyIngress.ipv4_lpm:  hdr.ipv4.dstAddr (b'\n\x00\x03\x03', 32) -> MyIngress.ipv4_forward dstAddr b'\x08\x00\x00\x00\x03\x00' port b'\x03' 
MyIngress.ipv4_lpm:  hdr.ipv4.dstAddr (b'\n\x00\x02\x02', 32) -> MyIngress.ipv4_forward dstAddr b'\x08\x00\x00\x00\x02"' port b'\x02' 
p4@p4:~/simple-switch-grpc-tutorial/my_tutorials/exercises/api$ 
```
// z sudo żeby znaleść pakiet 


# po


```sh
mininet> pingall
*** Ping: testing ping reachability
h1 -> h2 h3 
h2 -> h1 h3 
h3 -> h1 h2 
*** Results: 0% dropped (6/6 received)
mininet> 
```