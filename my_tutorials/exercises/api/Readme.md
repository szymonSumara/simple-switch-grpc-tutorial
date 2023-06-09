# P4Runtime API

## Opis ćwiczenia

Celem ćwiczenia jest znalezienie przyczyny
braku komunikacji pomiędzy hostami, 
a następnie naprawa błędów poprzez dodanie wpisu do tabeli za pomocą P4Runtime API.

## Krok 1: Kompilacja i uruchomienie sieci mininet

W tym kroku chcemy:
* skompilować `basic.p4`,
* uruchomić triangle-topo w Mininet z konfiguracją switchy
i wszystkich hostów wylistowanych w
   [triangle-topo/topology.json](./triangle-topo/topology.json)

W tym celu:
1. Tworzymy potrzebne katalogi: `mkdir -p build pcaps logs`
2. Kompilujemy nasz program P4: `p4c-bm2-ss --p4v 16 --p4runtime-files build/basic.p4.p4info.txt -o build/basic.json basic.p4` 
3. Uruchamiamy wszystko poprzez `sudo python3 ../../utils/run_exercise.py -t triangle-topo/topology.json -j build/basic.json -b simple_switch_grpc`

4. W kolejnych krokach będzimy używać polecenia
   ```bash
   make
   ```
   co odpowiada wykonaniu powyższych kroków.

## Krok 2: Sprawdzenie komunikacji
Poleceniem `pingall` sprawdzamy komunikację pomiędzy wszystkimi hostami
```sh
mininet> pingall
*** Ping: testing ping reachability
h1 -> X h3 
h2 -> X h3 
h3 -> h1 h2 
*** Results: 33% dropped (4/6 received)
mininet> 
```
Jak widać z outputu powyższej komendy komunikacja pomiędzy hostem h1 i h2 nie działa. W kolejnych krokach spróbujemy to naprawić.


## Krok 3: Analiza tablic routingu 

Analizując pliki zawarte w [triangle-topo/topology.json](./triangle-topo/topology.json), należy znaleźć brakujący wpis w tablicy routingu jednego z urządzeń.

## Krok 4: Dodanie brakującego wpisu
W pliku [mycontroller.py](./mycontroller.py) uzupełniamy funkcję writeTableEntry:

    1. Do table_entry dodajemy:
       nazwę tabeli: table_name="MyIngress.ipv4_lpm"
       opcję dopasowanie:  match_fields={
                              "hdr.ipv4.dstAddr": (dst_ip_addr, 32)
                           }
       nazwę akcji: action_name="MyIngress.ipv4_forward"
       parametry akcji: action_params={
                           "dstAddr": dst_eth_addr,
                           "port": port
                        }

    2. Uzupełniamy argumenty wywałania funkcji

## Krok 5: Uruchomienie kontrolera
Komendą `sudo ./mycontroller.py` uruchamiamy nasz kontroler.

Wynik programu powinien być następujący:
```sh
p4@p4:~/simple-switch-grpc-tutorial/my_tutorials/exercises/api$ sudo python3 mycontroller.py
Added table entry on s1

----- Reading tables rules for s1 -----
MyIngress.ipv4_lpm:  hdr.ipv4.dstAddr (b'\n\x00\x01\x01', 32) -> MyIngress.ipv4_forward dstAddr b'\x08\x00\x00\x00\x01\x11' port b'\x01' 
MyIngress.ipv4_lpm:  hdr.ipv4.dstAddr (b'\n\x00\x03\x03', 32) -> MyIngress.ipv4_forward dstAddr b'\x08\x00\x00\x00\x03\x00' port b'\x03' 
MyIngress.ipv4_lpm:  hdr.ipv4.dstAddr (b'\n\x00\x02\x02', 32) -> MyIngress.ipv4_forward dstAddr b'\x08\x00\x00\x00\x02"' port b'\x02' 
```

## Krok 6: Sprawdzenie komunikacji
```sh
mininet> pingall
*** Ping: testing ping reachability
h1 -> h2 h3 
h2 -> h1 h3 
h3 -> h1 h2 
*** Results: 0% dropped (6/6 received)
mininet> 
```
Wszystko działa!!!