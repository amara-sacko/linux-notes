#!/bin/bash
# Script qui ping une liste de serveurs et logue les résultats avec horodatage

# Liste des serveurs à surveiller (IPs séparées par des espaces)
SERVERS="192.168.1.1 192.168.1.2 192.168.1.3"

# Boucle for qui parcourt chaque serveur de la liste
for SERVEUR in $SERVERS; do
    # Envoie 1 seul paquet ping, masque la sortie (-c 1 = 1 paquet)
    # > /dev/null 2>&1 = redirige sortie normale ET erreurs vers /dev/null
    ping -c 1 $SERVEUR > /dev/null 2>&1

    # $? récupère le code retour de la dernière commande (0 = succès)
    if [ $? -eq 0 ]; then
        # $(date) = horodatage automatique
        echo "$(date) - $SERVEUR : OK" >> ~/projets/scripts/ping-results.log
    else
        echo "$(date) - $SERVEUR : UNREACHABLE" >> ~/projets/scripts/ping-results.log
    fi
done
