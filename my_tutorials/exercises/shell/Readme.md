# P4Runtime shell

## Opis ćwiczenia

Celem ćwiczenia jest znalezienie przyczyny
braku komunikacji pomiędzy hostami, 
a następnie naprawa błędów poprzez dodanie wpisu do tabeli za pomocą powłoki P4Runtime shell.

## Krok 1: Kompilacja i uruchomienie sieci mininet

1. W terminalu wykonujemy:
   ```bash
   make
   ```
   Powoduje to:
   * kompilacje `basic.p4`,
   * uruchomienie triangle-topo w Mininet i konfiguracje switchy
   * konfiguracje wszystkich hostów wylistowanych
   [triangle-topo/topology.json](./triangle-topo/topology.json)
## Krok 2: Sprawdzenie działania
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

## Krok 3: uruchomienie powłoki
Do uruchomienia shell'a wymagany jest adres serwera gRPC uruchomionego na switchu oraz identyfikator urządzenia.
Obie te wartości znajdziemy w logach uruchomienia `mininet`.


`python3 -m p4runtime_sh --grpc-addr 0.0.0.0:50051 --device-id 0` 


## Krok 3: Analiza tablic routingu 
W celu znalezienia braku w tablicy routingu możemy wykorzystać następujące polecenia:
```sh
tables - wyświetlenie nazwy tablic na urządzeniu

tables["MyIngress.ipv4_lpm"]- wyświetlenie wpisów w tabeli

table_entry["MyIngress.ipv4_lpm"](action="MyIngressipv4_forward") - wyświtlenie akcji o danej nazwie w tabeli

table_entry["MyIngress.ipv4_lpm"].read(lambda te: print(te)) - szczegółowe wyświetlenie zawartości całej tabeli
``` 
Niemniej jednak adresy wyświetlane są w systemie szesnastkowym co utrudnia analizę. Brakujący wpis w tabeli znajdziemy przeglądając
pliki zawarte w [triangle-topo/topology.json](./triangle-topo/topology.json).


## Krok 4: Dodanie wpisu do tablicy

Dodanie wpisu do tablicy wymaga dodania wpisu akcji o nazwie `MyIngress.ipv4_forward`

1. Pobieramy akcje o danej nazwie i przypisujemy ją do zmiennej:
 `te = table_entry["MyIngress.ipv4_lpm"](action="MyIngress.ipv4_forward")`
2. Wyświetlenie zawartości zmiennych możliwe jest poprzez '`?`'
 (np. `te?`)
3. Definiujemy opcje dopasowania, w naszym przypadku - docelowy adres IP: `te.match["hdr.ipv4.dstAddr"] = "???/32"`
4. Wypełniamy parametry akcji:
   - adres MAC: `te.action["dstAddr"] = "???"`
   - port na który przekażemy wiadomość: `te.action["port"] = "???"`

5. Mając zdefiniowaną akcje możemy ją dodać poleceniem: `te.insert`



## Krok 5: Sprawdzenie komunikacji

```sh
mininet> pingall
*** Ping: testing ping reachability
h1 -> h2 h3 
h2 -> h1 h3 
h3 -> h1 h2 
*** Results: 0% dropped (6/6 received)
```
Udało się!!!

## Problemy
 W przypadku problemów polecenia znajdują się w [solution/add_table_entry.sh](./solution/add_table_entry.sh)

Można je wykonać wszystkie na raz uruchamiając
```sh
python3 -m p4runtime_sh --grpc-addr 0.0.0.0:50051 --device-id 0 < add_table_entry.sh

```