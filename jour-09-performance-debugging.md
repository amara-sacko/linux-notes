# Jour 09 - Performance & Debugging Linux

## Commandes apprises

### Monitoring performance
- `vmstat 1 5` : statistiques CPU/RAM toutes les secondes (5 fois)
- `top` : monitoring en temps réel des processus

### Colonnes importantes de vmstat
- `r` : processus en attente du CPU
- `id` : CPU idle (inactif) — si 0% = CPU saturé ⚠️
- `us` : CPU utilisé par les programmes
- `sy` : CPU utilisé par le système
- `free` : RAM disponible

### Simulation de charge
- `stress-ng --cpu 2 --timeout 30s` : stresse le CPU pendant 30s

### Logs système
- `sudo journalctl -n 50` : 50 dernières lignes de logs
- `sudo journalctl -u ssh -n 20` : logs du service SSH uniquement

### Debugging service
- `sudo systemctl status nginx` : état détaillé + derniers logs
- `sudo systemctl reload nginx` : recharger la config sans couper

## Points clés à retenir
- `id = 0%` dans vmstat = CPU saturé, signal d'alarme en prod
- journalctl enregistre TOUT — connexions SSH, erreurs, redémarrages
- Linux indique toujours où est l'erreur dans les logs — toujours lire le message !
- Tester la config avant de recharger : `sudo nginx -t`
