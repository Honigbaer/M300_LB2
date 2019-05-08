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

**Dockerfile:**
Dockerfile ist eine Textdatei mit Anweisungen zur Erzeugung eines Docker-Image.
`docker build -t mysql .`
bildet das Image
`docker run --rm -d --name mysql mysql`
Start
`docker exec -it mysql bash`
Überprüfung der Funktionsfähigkeit
`ps -ef` oder `netstat -tulpen`
Überprüfung im Container