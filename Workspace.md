
MakeFile

`p4@p4:~/tutorials/exercises/basic/`

```sh
mkdir -p build pcaps logs

p4c-bm2-ss --p4v 16 --p4runtime-files build/basic.p4.p4info.txt -o build/basic.json basic.p4

sudo python3 ../../utils/run_exercise.py -t pod-topo/topology.json -j build/basic.json -b simple_switch_grpc

```

Tool `run_exercise.py`

Uruchamia tyle progrmów wskazanych parametrem -b ile wynika z pliku podanego przez -t (ile switchy)
// w run_exercise w main można odkomentować sb logi żeby zobaczyć to

```sh
sudo python3                    # mininet potrzebuje root-a
 ../../utils/run_exercise.py    # wraper bmv2
-t pod-topo/topology.json       # Ścieżka do zdefiniowanej topologii sieci
-j build/basic.json             # Ściezka to 'skompilowanego' programu p4
-b simple_switch_grpc           # Ścieżka do 'software switch' na którym uruchamiany jest wskazany program p4 (domyślnie: simple_switch)
```

# `P4C`


Kompilacja pliku z makeFile

```sh
p4c-bm2-ss                                  # Program domyślnie używany w makefile do kompilacji na architekturę BMv2, p4c mechavoralmodel simple switch
--p4v 16                                    # Specyfikajca języka w wersji 16 (https://p4.org/specs/)
--p4runtime-files build/basic.p4.p4info.txt # Format tekstowy pliku opisującego interfejs P4Runtime programu.
-o build/basic.json                         # Ścieżka do pliku artefaktu kompilacji
basic.p4                                    # Plik źródłowy
```


# p4c bez wrapera p4c-bm2-ss 

```sh
p4c --target bmv2 --arch v1model            # kompilacje p4c ze wskazaniem modelu behavioralnego na architekturze v1model
--std p4-16                                 # Specyfikajca języka
--p4runtime-files build/basic.p4.p4info.txt # Format tekstowy pliku opisującego interfejs P4Runtime programu.
-o build    # wyjściowy folder w którym znajdą się pliki (m.in *.json)
basic.p4                                    # Plik źródłowy
```

### Jakie są wspierane architektury w kompilatorze p4c?

```sh
p4@p4:~/tutorials/exercises/basic$ p4c --target-help
Supported targets in "target, arch" tuple:
ebpf-v1model
bmv2-v1model
bmv2-psa
dpdk-psa

```
