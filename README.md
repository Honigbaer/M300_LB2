# M300_LB2
M300 LB2
### Tandem
Honegger Fabrice, Von Atzigen Gregor
### Repository von
Honegger Fabrice

## Thema LB2 Docker
### 01 Container
**Merkmale von Container-Systemen:** <br>
 * teilen sich Ressourcen mit dem Host-Betriebssystem
 * schnell einsatzbereit
 * Anwendungen verursachen wenig bis keinen Overhead
 * portierbar
 * paralleler Betrieb mehrerer Container ohne Probleme möglich
 * Cloud-ready

### 02 Docker
**Docker:** <br>
* besteht aus zwei Komponenten: Docker Engine und Docker Hub
* verbesserte und erweiterte Version der Linux-Containertechnologie
* für 64-bit Linux-Umgebungen entwickelt
* mittels virtuellen Maschinen auch auf Windows und Mac nutzbar

![](http://iotkit.mc-b.ch/tbz/M300V3/html/40-Container/images/DockerArchitektur.png  "Docker Architektur") 

**Komponenten:** <br>
Daemon:             erstellen, ausführen und überwachen der Container<br>
Client:             Bedienung mittels Kommandozeile CLI und Kommunikation per HTTP REST<br>
Images:             gebuildete Container, nicht veränderbar, Name und Version<br>
Container:          ausgeführte Images, Image kann beliebig oft ausgeführt werden<br>
Docker Registry:    Image-Ablage und Verteilung, Standard Docker Hub<br>

**Befehle:**

`docker run`<br>
startet einen neuen Container, unterstützt zahlreiche Argumente<br>
`docker ps`<br>
Übersicht über die aktuellen Container<br>
`docker images`<br>
Liste lokaler Images<br>
`docker rm`<br>
entfernt einen oder mehrere Container<br>
`docker rmi`<br>
löscht die angegebenen Images<br>
`docker start`<br>
startet gestoppte Container<br>
`docker stop`<br>
stoppt Container<br>
`docker kill`<br>
stopp Container sofort (Signal an Hauptprozess)<br>
`docker logs`<br>
Container Logs<br>
`docker inspect`<br>
Informationen zu Containern<br>
`docker diff`<br>
zeigt Änderungen am Dateisystem des Containers<br>
`docker top`<br>
Informationen zu laufendem Prozess im Container<br>

**Dockerfile:**<br>
Dockerfile ist eine Textdatei mit Anweisungen zur Erzeugung eines Docker-Image.<br>
`docker build -t mysql .`<br>
bildet das Image<br>
`docker run --rm -d --name mysql mysql`<br>
Start<br>
`docker exec -it mysql bash`<br>
Überprüfung der Funktionsfähigkeit<br>
`ps -ef` oder `netstat -tulpen`<br>
Überprüfung im Container<br>

**Dockerprojekt**<br>
Meine erste Idee war eine Bereitstellung eines Plex-Mediaserver mit Verlinkung auf Filmdatenbanken. Dies war jedoch unter Windows aufgrund diversen bekannten Problemen nicht umsetzbar.

Nun habe ich ein kleineres Microservice-Projekt mit einem Node-Container und einem PostgreSQL-Container. 

**Reflexion**<br>
Docker war für mich genau wie Vagrant komplettes Neuland. Ich hatte mit Docker etwas mehr Mühe Verständnis für die einzelnen Vorgänge zu entwickeln. Ebenfalls hatte ich nicht auf Anhieb eine direkte Projektidee.<br>
Wie bereits bei Vagrant, würde ich bei Docker eine Einführung und Demonstration mit Dockerfile und Docker-Compose.yaml File wünschen.