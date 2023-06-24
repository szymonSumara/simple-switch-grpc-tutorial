## Przed akcjami

```sh
p4@p4:~/simple-switch-grpc-tutorial/my_tutorials/exercises/shell$ make
mkdir -p build pcaps logs
p4c-bm2-ss --p4v 16 --p4runtime-files build/basic.p4.p4info.txt -o build/basic.json basic.p4
sudo python3 ../../utils/run_exercise.py -t triangle-topo/topology.json -j build/basic.json -b simple_switch_grpc
Reading topology file.
Building mininet topology.
*** Creating network
*** Adding hosts:
h1 h2 h3 
*** Adding switches:
s1 s2 s3 
*** Adding links:
(0ms delay) (0ms delay) (h1, s1) (0ms delay) (0ms delay) (h2, s2) (0ms delay) (0ms delay) (h3, s3) (0ms delay) (0ms delay) (s1, s2) (0ms delay) (0ms delay) (s1, s3) (0ms delay) (0ms delay) (s2, s3) 
*** Configuring hosts
h1 h2 h3 
*** Starting controller

*** Starting 3 switches
s1 Starting P4 switch s1.
simple_switch_grpc -i 1@s1-eth1 -i 2@s1-eth2 -i 3@s1-eth3 --pcap /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/pcaps --nanolog ipc:///tmp/bm-0-log.ipc --device-id 0 build/basic.json --log-console --thrift-port 9090 -- --grpc-server-addr 0.0.0.0:50051
P4 switch s1 has been started.
s2 Starting P4 switch s2.
simple_switch_grpc -i 1@s2-eth1 -i 2@s2-eth2 -i 3@s2-eth3 --pcap /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/pcaps --nanolog ipc:///tmp/bm-1-log.ipc --device-id 1 build/basic.json --log-console --thrift-port 9091 -- --grpc-server-addr 0.0.0.0:50052
P4 switch s2 has been started.
s3 Starting P4 switch s3.
simple_switch_grpc -i 1@s3-eth1 -i 2@s3-eth2 -i 3@s3-eth3 --pcap /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/pcaps --nanolog ipc:///tmp/bm-2-log.ipc --device-id 2 build/basic.json --log-console --thrift-port 9092 -- --grpc-server-addr 0.0.0.0:50053
P4 switch s3 has been started.

Configuring switch s1 using P4Runtime with file triangle-topo/s1-runtime.json
 - Using P4Info file build/basic.p4.p4info.txt...
 - Connecting to P4Runtime server on 127.0.0.1:50051 (bmv2)...
 - Setting pipeline config (build/basic.json)...
 - Inserting 3 table entries...
 - MyIngress.ipv4_lpm: (default action) => MyIngress.drop()
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.1.1', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:01:11, port=1)
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.3.3', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:03:00, port=3)
Configuring switch s2 using P4Runtime with file triangle-topo/s2-runtime.json
 - Using P4Info file build/basic.p4.p4info.txt...
 - Connecting to P4Runtime server on 127.0.0.1:50052 (bmv2)...
 - Setting pipeline config (build/basic.json)...
 - Inserting 4 table entries...
 - MyIngress.ipv4_lpm: (default action) => MyIngress.drop()
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.1.1', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:01:00, port=2)
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.2.2', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:02:22, port=1)
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.3.3', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:03:00, port=3)
Configuring switch s3 using P4Runtime with file triangle-topo/s3-runtime.json
 - Using P4Info file build/basic.p4.p4info.txt...
 - Connecting to P4Runtime server on 127.0.0.1:50053 (bmv2)...
 - Setting pipeline config (build/basic.json)...
 - Inserting 4 table entries...
 - MyIngress.ipv4_lpm: (default action) => MyIngress.drop()
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.1.1', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:01:00, port=2)
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.2.2', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:02:00, port=3)
 - MyIngress.ipv4_lpm: hdr.ipv4.dstAddr=['10.0.3.3', 32] => MyIngress.ipv4_forward(dstAddr=08:00:00:00:03:33, port=1)
s1 -> gRPC port: 50051
s2 -> gRPC port: 50052
s3 -> gRPC port: 50053
**********
h1
default interface: eth0 10.0.1.1        08:00:00:00:01:11
**********
**********
h2
default interface: eth0 10.0.2.2        08:00:00:00:02:22
**********
**********
h3
default interface: eth0 10.0.3.3        08:00:00:00:03:33
**********
Starting mininet CLI

======================================================================
Welcome to the BMV2 Mininet CLI!
======================================================================
Your P4 program is installed into the BMV2 software switch
and your initial runtime configuration is loaded. You can interact
with the network using the mininet CLI below.

To inspect or change the switch configuration, connect to
its CLI from your host operating system using this command:
  simple_switch_CLI --thrift-port <switch thrift port>

To view a switch log, run this command from your host OS:
  tail -f /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/logs/<switchname>.log

To view the switch output pcap, check the pcap files in /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/pcaps:
 for example run:  sudo tcpdump -xxx -r s1-eth1.pcap

To view the P4Runtime requests sent to the switch, check the
corresponding txt file in /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/logs:
 for example run:  cat /home/p4/simple-switch-grpc-tutorial/my_tutorials/exercises/shell/logs/s1-p4runtime-requests.txt

*** Starting CLI:
mininet> pingall
*** Ping: testing ping reachability
h1 -> X h3 
h2 -> X h3 
h3 -> h1 h2 
*** Results: 33% dropped (4/6 received)
mininet> 
```

# Pakiet python

```sh
pip3 install p4runtime-shell
```

# wejście do shella
```sh
python3 -m p4runtime_sh --grpc-addr 0.0.0.0:50051 --device-id 0 
```

```sh
P4Runtime sh >>> tables
MyIngress.ipv4_lpm
```


tables["MyIngress.ipv4_lpm"]
```sh

P4Runtime sh >>> tables["MyIngress.ipv4_lpm"]
Out[1]: 
preamble {
  id: 37375156
  name: "MyIngress.ipv4_lpm"
  alias: "ipv4_lpm"
}
match_fields {
  id: 1
  name: "hdr.ipv4.dstAddr"
  bitwidth: 32
  match_type: LPM
}
action_refs {
  id: 28792405 ("MyIngress.ipv4_forward")
}
action_refs {
  id: 25652968 ("MyIngress.drop")
}
action_refs {
  id: 21257015 ("NoAction")
}
size: 1024
```

```sh
P4Runtime sh >>> table_entry["MyIngress.ipv4_lpm"](action="MyIngress.ipv4_forward")
Out[2]: 
table_id: 37375156 ("MyIngress.ipv4_lpm")
action {
  action {
    action_id: 28792405 ("MyIngress.ipv4_forward")
  }
}
```


```sh

P4Runtime sh >>> te.match["hdr.ipv4.dstAddr"] = "10.0.2.2/32"
field_id: 1
lpm {
  value: "\n\000\002\002"
  prefix_len: 32
}
```


```sh
P4Runtime sh >>> te.action["dstAddr"] = "08:00:00:00:02:00"
param_id: 1
value: "\010\000\000\000\002\000"

```

```sh

P4Runtime sh >>> te.action["port"] = "2"
param_id: 2
value: "\002"

```
```sh
P4Runtime sh >>> te.action?
Type:        Action
String form:
action_id: 28792405
params {
  param_id: 1
  value: "\010\000\000\000\002\000"
}
params {
  param_id: 2
  value: "\002"
}
File:        ~/.local/lib/python3.8/site-packages/p4runtime_sh/shell.py
Docstring:  
Action parameters for action 'MyIngress.ipv4_forward':

id: 1
name: "dstAddr"
bitwidth: 48
id: 2
name: "port"
bitwidth: 9


Set a param value with <self>['<param_name>'] = '<value>'
You may also use <self>.set(<param_name>='<value>')
```


## Rezultat


```sh

mininet> pingall
*** Ping: testing ping reachability
h1 -> h2 h3 
h2 -> h1 h3 
h3 -> h1 h2 
*** Results: 0% dropped (6/6 received)

```

## Dziłające rozwiązanie

```sh

python3 -m p4runtime_sh --grpc-addr 0.0.0.0:50051 --device-id 0 < add_table_entry.sh

```