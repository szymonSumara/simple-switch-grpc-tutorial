# Próby uruchomienia sampla z PTF-em

## Instalacja ptf-a

### Rekursywne klonowanie repo

W logach można zauważyć odmowy dostępu, submoduł są po ssh do których nie jesteśmy upoważanieni

```sh
p4@p4:~$ git clone https://github.com/p4lang/p4factory.git --recursive
Cloning into 'p4factory'...
remote: Enumerating objects: 3033, done.
remote: Total 3033 (delta 0), reused 0 (delta 0), pack-reused 3033
Receiving objects: 100% (3033/3033), 2.52 MiB | 2.53 MiB/s, done.
Resolving deltas: 100% (1668/1668), done.
Submodule 'submodules/bm' (https://github.com/p4lang/behavioral-model.git) registered for path 'submodules/bm'
Submodule 'submodules/oftest' (https://github.com/floodlight/oftest) registered for path 'submodules/oftest'
Submodule 'submodules/p4-build' (https://github.com/p4lang/p4-build.git) registered for path 'submodules/p4-build'
Submodule 'submodules/p4c-behavioral' (https://github.com/p4lang/p4c-behavioral.git) registered for path 'submodules/p4c-behavioral'
Submodule 'submodules/p4c-bm' (https://github.com/p4lang/p4c-bm.git) registered for path 'submodules/p4c-bm'
Submodule 'submodules/p4ofagent' (https://github.com/p4lang/p4ofagent) registered for path 'submodules/p4ofagent'
Submodule 'submodules/ptf' (https://github.com/p4lang/ptf.git) registered for path 'submodules/ptf'
Submodule 'submodules/switch' (https://github.com/p4lang/switch.git) registered for path 'submodules/switch'
Cloning into '/home/p4/p4factory/submodules/bm'...
remote: Enumerating objects: 14405, done.        
remote: Counting objects: 100% (749/749), done.        
remote: Compressing objects: 100% (444/444), done.        
remote: Total 14405 (delta 386), reused 550 (delta 278), pack-reused 13656        
Receiving objects: 100% (14405/14405), 33.76 MiB | 1.29 MiB/s, done.
Resolving deltas: 100% (10122/10122), done.
BUG: refs/files-backend.c:2956: initial ref transaction called with existing refs
error: clone died of signal 6
fatal: clone of 'https://github.com/p4lang/behavioral-model.git' into submodule path '/home/p4/p4factory/submodules/bm' failed
Failed to clone 'submodules/bm'. Retry scheduled
Cloning into '/home/p4/p4factory/submodules/oftest'...
remote: Enumerating objects: 8938, done.        
remote: Counting objects: 100% (84/84), done.        
remote: Compressing objects: 100% (31/31), done.        
remote: Total 8938 (delta 50), reused 79 (delta 47), pack-reused 8854        
Receiving objects: 100% (8938/8938), 4.23 MiB | 2.62 MiB/s, done.
Resolving deltas: 100% (5085/5085), done.
Cloning into '/home/p4/p4factory/submodules/p4-build'...
remote: Enumerating objects: 199, done.        
remote: Counting objects: 100% (1/1), done.        
remote: Total 199 (delta 0), reused 0 (delta 0), pack-reused 198        
Receiving objects: 100% (199/199), 47.08 KiB | 1.24 MiB/s, done.
Resolving deltas: 100% (91/91), done.
Cloning into '/home/p4/p4factory/submodules/p4c-behavioral'...
remote: Enumerating objects: 787, done.        
remote: Total 787 (delta 0), reused 0 (delta 0), pack-reused 787        
Receiving objects: 100% (787/787), 336.87 KiB | 1.86 MiB/s, done.
Resolving deltas: 100% (466/466), done.
Cloning into '/home/p4/p4factory/submodules/p4c-bm'...
remote: Enumerating objects: 1726, done.        
remote: Counting objects: 100% (6/6), done.        
remote: Compressing objects: 100% (6/6), done.        
remote: Total 1726 (delta 1), reused 0 (delta 0), pack-reused 1720        
Receiving objects: 100% (1726/1726), 458.19 KiB | 1.46 MiB/s, done.
Resolving deltas: 100% (1090/1090), done.
Cloning into '/home/p4/p4factory/submodules/p4ofagent'...
remote: Enumerating objects: 222, done.        
remote: Counting objects: 100% (3/3), done.        
remote: Compressing objects: 100% (3/3), done.        
remote: Total 222 (delta 0), reused 1 (delta 0), pack-reused 219        
Receiving objects: 100% (222/222), 87.04 KiB | 1.36 MiB/s, done.
Resolving deltas: 100% (110/110), done.
Cloning into '/home/p4/p4factory/submodules/ptf'...
remote: Enumerating objects: 1112, done.        
remote: Counting objects: 100% (371/371), done.        
remote: Compressing objects: 100% (113/113), done.        
remote: Total 1112 (delta 287), reused 291 (delta 244), pack-reused 741        
Receiving objects: 100% (1112/1112), 574.71 KiB | 2.52 MiB/s, done.
Resolving deltas: 100% (607/607), done.
Cloning into '/home/p4/p4factory/submodules/switch'...
remote: Enumerating objects: 3777, done.        
remote: Counting objects: 100% (3/3), done.        
remote: Compressing objects: 100% (3/3), done.        
remote: Total 3777 (delta 0), reused 1 (delta 0), pack-reused 3774        
Receiving objects: 100% (3777/3777), 3.28 MiB | 2.56 MiB/s, done.
Resolving deltas: 100% (2605/2605), done.
BUG: submodule considered for cloning, doesn't need cloning any more?
Submodule path 'submodules/bm': checked out 'fbde523f86843b0218551fdad9155d27bfac94d7'
Submodule path 'submodules/oftest': checked out '747e8413303c1130a71a7920dced361f6c844758'
Submodule path 'submodules/p4-build': checked out '78cdb3f71503dbbd0e64e7a4c4d34a2a9d32c197'
Submodule path 'submodules/p4c-behavioral': checked out 'ec9c863484465507413cab34e578378d56683abd'
Submodule path 'submodules/p4c-bm': checked out '7d951bcd1f931e05b1eac46e9b7d54f2c9792ff5'
Submodule path 'submodules/p4ofagent': checked out '42992cfac047cb8b4be50a7b7a92247f0a6ad3e4'
Submodule 'submodules/indigo' (https://github.com/floodlight/indigo) registered for path 'submodules/p4ofagent/submodules/indigo'
Cloning into '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo'...
remote: Enumerating objects: 9547, done.        
remote: Counting objects: 100% (228/228), done.        
remote: Compressing objects: 100% (91/91), done.        
remote: Total 9547 (delta 131), reused 220 (delta 130), pack-reused 9319        
Receiving objects: 100% (9547/9547), 5.87 MiB | 2.61 MiB/s, done.
Resolving deltas: 100% (6547/6547), done.
Submodule path 'submodules/p4ofagent/submodules/indigo': checked out '47f935b3d90c2d45b91e3814c842969faf4c6726'
Submodule 'submodules/bigcode' (git@github.com:floodlight/bigcode) registered for path 'submodules/p4ofagent/submodules/indigo/submodules/bigcode'
Submodule 'submodules/infra' (git@github.com:floodlight/infra) registered for path 'submodules/p4ofagent/submodules/indigo/submodules/infra'
Submodule 'submodules/loxigen-artifacts' (git@github.com:floodlight/loxigen-artifacts.git) registered for path 'submodules/p4ofagent/submodules/indigo/submodules/loxigen-artifacts'
Cloning into '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/bigcode'...
The authenticity of host 'github.com (140.82.121.4)' can't be established.
ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com,140.82.121.4' (ECDSA) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
fatal: clone of 'git@github.com:floodlight/bigcode' into submodule path '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/bigcode' failed
Failed to clone 'submodules/bigcode'. Retry scheduled
Cloning into '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/infra'...
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
fatal: clone of 'git@github.com:floodlight/infra' into submodule path '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/infra' failed
Failed to clone 'submodules/infra'. Retry scheduled
Cloning into '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/loxigen-artifacts'...
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
fatal: clone of 'git@github.com:floodlight/loxigen-artifacts.git' into submodule path '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/loxigen-artifacts' failed
Failed to clone 'submodules/loxigen-artifacts'. Retry scheduled
Cloning into '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/bigcode'...
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
fatal: clone of 'git@github.com:floodlight/bigcode' into submodule path '/home/p4/p4factory/submodules/p4ofagent/submodules/indigo/submodules/bigcode' failed
Failed to clone 'submodules/bigcode' a second time, aborting
Failed to recurse into submodule path 'submodules/p4ofagent/submodules/indigo'
Submodule path 'submodules/ptf': checked out 'a34cca9923969c7ceff520c27bc66be453f5e5d7'
Submodule path 'submodules/switch': checked out '267301d057bc933109273b0084d1cb51eb06d67c'
Submodule 'p4-build' (https://github.com/p4lang/p4-build.git) registered for path 'submodules/switch/p4-build'
Submodule 'switchsai/submodules/SAI' (https://github.com/p4lang/SAI) registered for path 'submodules/switch/switchsai/submodules/SAI'
Cloning into '/home/p4/p4factory/submodules/switch/p4-build'...
remote: Enumerating objects: 199, done.        
remote: Counting objects: 100% (1/1), done.        
remote: Total 199 (delta 0), reused 0 (delta 0), pack-reused 198        
Receiving objects: 100% (199/199), 47.08 KiB | 1.52 MiB/s, done.
Resolving deltas: 100% (91/91), done.
Cloning into '/home/p4/p4factory/submodules/switch/switchsai/submodules/SAI'...
remote: Enumerating objects: 5707, done.        
remote: Total 5707 (delta 0), reused 0 (delta 0), pack-reused 5707        
Receiving objects: 100% (5707/5707), 49.75 MiB | 2.61 MiB/s, done.
Resolving deltas: 100% (4057/4057), done.
Submodule path 'submodules/switch/p4-build': checked out '32c897b3b03f438e36191d7002b31319eca864b4'
Submodule path 'submodules/switch/switchsai/submodules/SAI': checked out '62fb5b951ccd4d16599f4c0ff31341c48f44cdfd'
Submodule 'test/ptf' (https://github.com/p4lang/ptf) registered for path 'submodules/switch/switchsai/submodules/SAI/test/ptf'
Submodule 'test/saithrift/ctypesgen' (https://github.com/davidjamesca/ctypesgen) registered for path 'submodules/switch/switchsai/submodules/SAI/test/saithrift/ctypesgen'
Cloning into '/home/p4/p4factory/submodules/switch/switchsai/submodules/SAI/test/ptf'...
remote: Enumerating objects: 1112, done.        
remote: Counting objects: 100% (367/367), done.        
remote: Compressing objects: 100% (115/115), done.        
remote: Total 1112 (delta 284), reused 286 (delta 238), pack-reused 745        
Receiving objects: 100% (1112/1112), 565.74 KiB | 2.51 MiB/s, done.
Resolving deltas: 100% (608/608), done.
Cloning into '/home/p4/p4factory/submodules/switch/switchsai/submodules/SAI/test/saithrift/ctypesgen'...
remote: Enumerating objects: 2111, done.        
remote: Counting objects: 100% (296/296), done.        
remote: Compressing objects: 100% (118/118), done.        
remote: Total 2111 (delta 206), reused 214 (delta 171), pack-reused 1815        
Receiving objects: 100% (2111/2111), 1.17 MiB | 2.62 MiB/s, done.
Resolving deltas: 100% (1344/1344), done.
Submodule path 'submodules/switch/switchsai/submodules/SAI/test/ptf': checked out 'fe3cd89e332d9b0e673230e06a1a7ff29d688df5'
Submodule path 'submodules/switch/switchsai/submodules/SAI/test/saithrift/ctypesgen': checked out '3d2d9803339503d2988382aa861b47a6a4872c32'
Failed to recurse into submodule path 'submodules/p4ofagent'
```

## Instalacja dependencji oraz samego ptf

```sh
p4@p4:~/simple-switch-grpc-tutorial/p4lang_ptf$ pip install -r requirements.txt
Collecting six==1.16.0
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
ERROR: launchpadlib 1.10.13 requires testresources, which is not installed.
Installing collected packages: six
Successfully installed six-1.16.0
p4@p4:~/simple-switch-grpc-tutorial/p4lang_ptf$ pip install scapy==2.4.5
Collecting scapy==2.4.5
  Downloading scapy-2.4.5.tar.gz (1.1 MB)
     |████████████████████████████████| 1.1 MB 2.0 MB/s 
Building wheels for collected packages: scapy
  Building wheel for scapy (setup.py) ... done
  Created wheel for scapy: filename=scapy-2.4.5-py2.py3-none-any.whl size=1261545 sha256=afcc83e62a85f12ea5950777d65a0b1af40369167153500d6b0377ab27b270f6
  Stored in directory: /home/p4/.cache/pip/wheels/51/c7/3d/6c23d4a039ee412a093156be4dbc0725946a2ec64f9b9ab61e
Successfully built scapy
Installing collected packages: scapy
Successfully installed scapy-2.4.5
p4@p4:~/simple-switch-grpc-tutorial/p4lang_ptf$ ptf --version
0.10.0
```

## Chcąć uruchomić przykłd potrzeba repozytorium p4factory

Pownieważ jak sami napisali `switch_sai_thrift` jest putym folderem do którego należy dostarczyć wiązania do warstwy kontrolnej switch-a programowalnego

`If you want to run the example, you will need to obtain p4factory.`

Można zauważyć że repozytorium jest zaarchiwizowane 

[p4factory](https://github.com/p4lang/p4factory)

This repository is in the process of being deprecated. If you are looking to experiment with the P4 language and with the P4 behavioral-model, please visit the [tutorials repository](https://github.com/p4lang/tutorials)

Powyższy link do tutorialsów to ten w którym robimy


### Ale próbując...

Ustawienie zmiennej

```sh
p4@p4:~/p4factory$ export P4FACTORY=$(pwd)
p4@p4:~/p4factory$ echo $P4FACTORY
/home/p4/p4factory
p4@p4:~/p4factory$ ls $P4FACTORY/tools/
default_p4_source  newtarget.py  new_target_template  veth_disable_ipv6.sh  veth_setup.sh  veth_teardown.sh
p4@p4:~/p4factory$ 
```

## Konfiguracja przykładu 

```sh
p4@p4:~/p4factory/tools$ sudo ./veth_setup.sh
No of Veths is 18
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
tx-checksumming: off
        tx-checksum-ip-generic: off
        tx-checksum-sctp: off
tcp-segmentation-offload: off
        tx-tcp-segmentation: off [requested on]
        tx-tcp-ecn-segmentation: off [requested on]
        tx-tcp-mangleid-segmentation: off [requested on]
        tx-tcp6-segmentation: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Actual changes:
scatter-gather: off
        tx-scatter-gather: off
        tx-scatter-gather-fraglist: off
generic-segmentation-offload: off [requested on]
Cannot change udp-fragmentation-offload
Cannot change udp-fragmentation-offload
Cannot change large-receive-offload
Cannot change large-receive-offload
Cannot change receive-hashing
Cannot change receive-hashing
p4@p4:~/p4factory/tools$ 
```

## Próba kompilacji

```sh
p4@p4:~/p4factory/tools$ cd $P4FACTORY/targets/switch/
p4@p4:~/p4factory/targets/switch$ make bm-switchsai
make: python: Command not found
Local submodule update failed.
Result:

../../init.mk:126: *** Abort.  Stop.
```

## Fragment lini powodującej błąd w makefile `init.mk`

```makefile

ifdef SUBMODULES_LOCAL
  SUBMODULES_LOCAL_UPDATE := $(shell python $(ROOT)/submodules/init.py --update $(SUBMODULES_LOCAL)) <--------------
  ifneq ($(lastword $(SUBMODULES_LOCAL_UPDATE)),submodules:ok.)
    $(info Local submodule update failed.)
    $(info Result:)
    $(info $(SUBMODULES_LOCAL_UPDATE))
    $(error Abort)  <--------------
  endif
endif

```

Pragnę zaznaczyć że repozytorium było klonowne rekursywnie

## No to ustawmy pythona na pythona3

Lub w make ustawmy pythona3 niżeli pythona

```sh
p4@p4:~/p4factory/targets/switch$ sudo apt install python-is-python3
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  python-is-python3
0 upgraded, 1 newly installed, 0 to remove and 1 not upgraded.
Need to get 2,364 B of archives.
After this operation, 10.2 kB of additional disk space will be used.
Get:1 http://us.archive.ubuntu.com/ubuntu focal/main amd64 python-is-python3 all 3.8.2-4 [2,364 B]
Fetched 2,364 B in 0s (6,178 B/s)             
Selecting previously unselected package python-is-python3.
(Reading database ... 208179 files and directories currently installed.)
Preparing to unpack .../python-is-python3_3.8.2-4_all.deb ...
Unpacking python-is-python3 (3.8.2-4) ...
Setting up python-is-python3 (3.8.2-4) ...
p4@p4:~/p4factory/targets/switch$ python --version
Python 3.8.10
```

## Syntax error python-a 2

Poniższy błąd syntaktyczny pythona wskazuje na wersję2

p4@p4:~/p4factory/targets/switch$ make bm-switchsai
  File "/home/p4/p4factory/submodules/init.py", line 63
    print repr(e)
          ^
SyntaxError: invalid syntax
Local submodule update failed.
Result:

../../init.mk:126: *** Abort.  Stop.

## Instalowanie pythona2

Usunięcie aliasu i instalacja pythona2

```sh
p4@p4:~/p4factory/targets/switch$ sudo apt remove --purge python-is-python3
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages will be REMOVED:
  python-is-python3*
0 upgraded, 0 newly installed, 1 to remove and 1 not upgraded.
After this operation, 10.2 kB disk space will be freed.
Do you want to continue? [Y/n] Y
(Reading database ... 208183 files and directories currently installed.)
p4@p4:~/p4factory/targets/switch$  sudo apt install python2
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  libpython2-stdlib libpython2.7-minimal libpython2.7-stdlib python2-minimal python2.7 python2.7-minimal
Suggested packages:
  python2-doc python-tk python2.7-doc
The following NEW packages will be installed:
  libpython2-stdlib libpython2.7-minimal libpython2.7-stdlib python2 python2-minimal python2.7 python2.7-minimal
0 upgraded, 7 newly installed, 0 to remove and 1 not upgraded.
Need to get 3,812 kB of archives.
After this operation, 16.5 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://us.archive.ubuntu.com/ubuntu focal-updates/universe amd64 libpython2.7-minimal amd64 2.7.18-1~20.04.3 [336 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu focal-updates/universe amd64 python2.7-minimal amd64 2.7.18-1~20.04.3 [1,280 kB]
Get:3 http://us.archive.ubuntu.com/ubuntu focal/universe amd64 python2-minimal amd64 2.7.17-2ubuntu4 [27.5 kB]
Get:4 http://us.archive.ubuntu.com/ubuntu focal-updates/universe amd64 libpython2.7-stdlib amd64 2.7.18-1~20.04.3 [1,888 kB]
Get:5 http://us.archive.ubuntu.com/ubuntu focal-updates/universe amd64 python2.7 amd64 2.7.18-1~20.04.3 [248 kB]
Get:6 http://us.archive.ubuntu.com/ubuntu focal/universe amd64 libpython2-stdlib amd64 2.7.17-2ubuntu4 [7,072 B]
Get:7 http://us.archive.ubuntu.com/ubuntu focal/universe amd64 python2 amd64 2.7.17-2ubuntu4 [26.5 kB]
Fetched 3,812 kB in 3s (1,472 kB/s)
Selecting previously unselected package libpython2.7-minimal:amd64.
(Reading database ... 208179 files and directories currently installed.)
Preparing to unpack .../0-libpython2.7-minimal_2.7.18-1~20.04.3_amd64.deb ...
Unpacking libpython2.7-minimal:amd64 (2.7.18-1~20.04.3) ...
Selecting previously unselected package python2.7-minimal.
Preparing to unpack .../1-python2.7-minimal_2.7.18-1~20.04.3_amd64.deb ...
Unpacking python2.7-minimal (2.7.18-1~20.04.3) ...
Selecting previously unselected package python2-minimal.
Preparing to unpack .../2-python2-minimal_2.7.17-2ubuntu4_amd64.deb ...
Unpacking python2-minimal (2.7.17-2ubuntu4) ...
Selecting previously unselected package libpython2.7-stdlib:amd64.
Preparing to unpack .../3-libpython2.7-stdlib_2.7.18-1~20.04.3_amd64.deb ...
Unpacking libpython2.7-stdlib:amd64 (2.7.18-1~20.04.3) ...
Selecting previously unselected package python2.7.
Preparing to unpack .../4-python2.7_2.7.18-1~20.04.3_amd64.deb ...
Unpacking python2.7 (2.7.18-1~20.04.3) ...
Selecting previously unselected package libpython2-stdlib:amd64.
Preparing to unpack .../5-libpython2-stdlib_2.7.17-2ubuntu4_amd64.deb ...
Unpacking libpython2-stdlib:amd64 (2.7.17-2ubuntu4) ...
Setting up libpython2.7-minimal:amd64 (2.7.18-1~20.04.3) ...
Setting up python2.7-minimal (2.7.18-1~20.04.3) ...
Linking and byte-compiling packages for runtime python2.7...
Setting up python2-minimal (2.7.17-2ubuntu4) ...
Selecting previously unselected package python2.
(Reading database ... 208926 files and directories currently installed.)
Preparing to unpack .../python2_2.7.17-2ubuntu4_amd64.deb ...
Unpacking python2 (2.7.17-2ubuntu4) ...
Setting up libpython2.7-stdlib:amd64 (2.7.18-1~20.04.3) ...
Setting up python2.7 (2.7.18-1~20.04.3) ...
Setting up libpython2-stdlib:amd64 (2.7.17-2ubuntu4) ...
Setting up python2 (2.7.17-2ubuntu4) ...
Processing triggers for mime-support (3.64ubuntu1) ...
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for desktop-file-utils (0.24-1ubuntu3) ...
p4@p4:~/p4factory/targets/switch$ 
```


## Sprawdzenia którego pythona mamy

```sh
p4@p4:~/p4factory/targets/switch$ python2 -V
Python 2.7.18
p4@p4:~/p4factory/targets/switch$ which python
p4@p4:~/p4factory/targets/switch$ which python2
/usr/bin/python2
p4@p4:~/p4factory/targets/switch$ which python3
/usr/bin/python3
p4@p4:~/p4factory/targets/switch$ 
```

## Ustawienie na sztywno pythona 2

```makefile
ifdef SUBMODULES_LOCAL
  SUBMODULES_LOCAL_UPDATE := $(shell python2 $(ROOT)/submodules/init.py --update $(SUBMODULES_LOCAL))
  ifneq ($(lastword $(SUBMODULES_LOCAL_UPDATE)),submodules:ok.)
    $(info Local submodule update failed.)
    $(info Result:)
    $(info $(SUBMODULES_LOCAL_UPDATE))
    $(error Abort)
  endif
endif
```

```sh
p4@p4:~/p4factory/targets/switch$ make bm-switchsai
/home/p4/p4factory/submodules/p4c-behavioral/p4c_bm/shell.py /home/p4/p4factory/submodules/switch/p4src/switch.p4 --gen-dir=/home/p4/p4factory/targets/switch/build//bm/ --thrift --public-inc-path=/home/p4/p4factory/targets/switch/build//inc/p4_sim --p4-prefix=dc -DRATE_LIMITING
/usr/bin/env: ‘python’: No such file or directory
make: *** [/home/p4/p4factory/submodules/p4c-behavioral/p4c-bm.mk:96: bm_tenjin_output_oldest] Error 127
```

## Jednak taka hakerka na szybko nie zadziałała, więc link symboliczny

```sh
p4@p4:~/p4factory/targets/switch$ sudo ln /usr/bin/python2 /usr/bin/python
p4@p4:~/p4factory/targets/switch$ make bm-switchsai
/home/p4/p4factory/submodules/p4c-behavioral/p4c_bm/shell.py /home/p4/p4factory/submodules/switch/p4src/switch.p4 --gen-dir=/home/p4/p4factory/targets/switch/build//bm/ --thrift --public-inc-path=/home/p4/p4factory/targets/switch/build//inc/p4_sim --p4-prefix=dc -DRATE_LIMITING
Traceback (most recent call last):
  File "/home/p4/p4factory/submodules/p4c-behavioral/p4c_bm/shell.py", line 20, in <module>
    from p4_hlir.main import HLIR
ImportError: No module named p4_hlir.main
make: *** [/home/p4/p4factory/submodules/p4c-behavioral/p4c-bm.mk:96: bm_tenjin_output_oldest] Error 1
```

## Brakująca kolejna dependencja

```sh
p4@p4:~$ git clone https://github.com/p4lang/p4-hlir.git --recursive
Cloning into 'p4-hlir'...
remote: Enumerating objects: 1067, done.
remote: Total 1067 (delta 0), reused 0 (delta 0), pack-reused 1067
Receiving objects: 100% (1067/1067), 1.13 MiB | 1.91 MiB/s, done.
Resolving deltas: 100% (795/795), done.
```

```sh
p4@p4:~/p4-hlir$ sudo python setup.py install
Traceback (most recent call last):
  File "setup.py", line 17, in <module>
    from setuptools import setup
ImportError: No module named setuptools
p4@p4:~/p4-hlir$ pip install setuptools
Requirement already satisfied: setuptools in /usr/lib/python3/dist-packages (45.2.0)
p4@p4:~/p4-hlir$ sudo python setup.py install
Traceback (most recent call last):
  File "setup.py", line 17, in <module>
    from setuptools import setup
ImportError: No module named setuptools
p4@p4:~/p4-hlir$ 
```

### Miarka się przegła, pakiety itp

Cytując infromacje w repozytorium [hlira](https://github.com/p4lang/p4-hlir/tree/a30208c9590b619e5caf60b320746a42946924de)

`
p4-hlir only supports the P4_14 version of the P4 programming language. If you need to compile P4_16 programs, you can use the new p4lang/p4c compiler, written in C++, which supports both P4_14 and P4_16. We will keep maintaining p4-hlir for the foreseeable future, but there is no plan to add P4_16 support to it.
`

1. Stary kompilator, zalecają użycie P4C tj tego co używamy
2. To jest na 14 wersję języka bez planow wsparcia 14 (bo to robi P4C)


## Sprzątanie

```sh
p4@p4:~/p4factory/targets/switch$ sudo unlink /usr/bin/python
p4@p4:~/p4factory/targets/switch$ unalias python
p4@p4:~/p4factory/targets/switch$ python --version
```

