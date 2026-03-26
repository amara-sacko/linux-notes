# Scripts de monitoring système

Collection de scripts Bash pour surveiller et analyser un serveur Linux.


## healthcheck-v2.sh

### Description
Script de healthcheck complet qui vérifie l'espace disque, la RAM et les services actifs.
Génère un rapport horodaté dans un fichier de log.

### Usage
```bash
./healthcheck-v2.sh
```

### Exemple de sortie
```
================================
   RAPPORT HEALTHCHECK SYSTÈME  
================================
Date : Tue Mar 24 04:16:53 PM UTC 2026
Espace disque correct: 58%
Espace mémoire RAM disponible: 408 Mo
Service nginx : actif
Service ssh.socket : actif
================================
   FIN DU RAPPORT
================================
```


## ping-servers.sh

### Description
Script qui ping une liste de serveurs et logue les résultats avec horodatage.
Indique si chaque serveur est joignable ou non.

### Usage
```bash
./ping-servers.sh
```

### Exemple de sortie
```
Tue Mar 17 07:31:27 AM UTC 2026 - 192.168.1.1 : UNREACHABLE
Tue Mar 17 07:31:37 AM UTC 2026 - 192.168.1.2 : UNREACHABLE
Tue Mar 17 07:31:47 AM UTC 2026 - 192.168.1.3 : UNREACHABLE
```


## check-disk.sh

### Description
Script qui vérifie l'utilisation de l'espace disque.
Alerte si l'utilisation dépasse 80%.

### Usage
```bash
./check-disk.sh
```

### Exemple de sortie
```
Espace disque correct: 58%
```


## syscheck.sh

### Description
Script de monitoring système qui affiche la RAM disponible, 
l'espace disque et la charge CPU.

### Usage
```bash
./syscheck.sh
```

### Exemple de sortie
```
================================
   RAPPORT MONITORING SYSTEME
================================
Date : Sun Mar 15 04:30:08 PM UTC 2026

=== RAM ===
               total        used        free
Mem:           1.9Gi       384Mi       406Mi

=== Espace disque ===
Filesystem      Size  Used Avail Use%
/dev/mapper     9.8G  5.3G  4.0G  57%

=== Charge CPU ===
procs -----------cpu-------
 r  b   id
 0  0   97
```


## functions.sh

### Description
Script de démonstration des fonctions Bash.
Regroupe les vérifications système en fonctions réutilisables.

### Usage
```bash
./functions.sh
```

### Exemple de sortie
```
Espace disque correct: 58%
Espace mémoire RAM disponible: 408 Mo
Service nginx : actif
Service apache2 : inactif
```
