# Simple switch grpc tutorial

## [Dysk z dokumantacją ](https://drive.google.com/drive/folders/1iEju-UDj_5y-66V5QB3P8aAHmJQfnNR8?usp=sharing)

## Przydatne linki

- [Projekty - upel (tip-12)](https://upel.agh.edu.pl/pluginfile.php/214222/mod_resource/content/1/2023-tip-projekty.pdf)
- [p4lang/tutorials/](https://github.com/p4lang/tutorials)
- [p4lang/behavioral-model/.../simple_switch_grpc](https://github.com/p4lang/behavioral-model/tree/main/targets/simple_switch_grpc)
- [p4runtime-shell](https://github.com/p4lang/p4runtime-shell/tree/main)
- [PTF Packet Testing Framework](https://github.com/p4lang/ptf/tree/main)

## Uruchomienie maszyny obsługiwanej za pomocą [Vagrant-a](https://www.vagrantup.com/), który używa Virtual Box:

Wymaga zainstalowanie vagranta oraz VirtualBox-a

Pierwsze uruchomienie potrwa jednorazowo ok 30 minut

```sh
vagrant up --provider=virtualbox
```

Zatrzymanie maszyny
```sh
vagrant halt
```

Usunięcie maszyny

```
vagrant destroy
```


## Do aktualizacji submodułów
```sh
git submodule update --remote
```