# Jour 10 - Cron Jobs & Analyse de Logs

## Commandes apprises

### Cron jobs
- `crontab -e` : éditer les tâches planifiées
- `crontab -l` : lister les tâches actives
- `crontab -r` : supprimer toutes les tâches

### Syntaxe cron — 5 champs
```
* * * * * commande
│ │ │ │ │
│ │ │ │ └── jour de la semaine (0-7)
│ │ │ └──── mois (1-12)
│ │ └────── jour du mois (1-31)
│ └──────── heure (0-23)
└────────── minute (0-59)
```

### Exemples
- `* * * * *` : toutes les minutes
- `0 5 * * 1` : tous les lundis à 5h
- `0 0 * * *` : tous les jours à minuit

### Analyse de logs
- `tail -f fichier` : afficher en temps réel
- `sudo journalctl -u ssh | grep "Failed"` : tentatives SSH échouées
- `sudo grep "Failed password" /var/log/auth.log` : recherche dans auth.log

## Points clés à retenir
- `tail -f` = surveiller un fichier en temps réel en prod
- Des centaines de "Failed password" depuis une IP externe = attaque brute force
- Installer `fail2ban` pour bloquer automatiquement les IPs suspectes
- **crontab.guru** = site interactif pour tester sa syntaxe cron
