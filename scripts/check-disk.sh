#!/bin/bash
# Script qui vérifie l'utilisation de l'espace disque et alerte si critique

# Récupère le pourcentage d'utilisation de la partition principale (sans le %)
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

# Si l'utilisation dépasse 80% affiche une alerte, sinon affiche correct
if [ $DISK_USAGE -gt 80 ]; then
        echo "Espace disque critique: $DISK_USAGE%"
else
        echo "Espace disque correct: $DISK_USAGE%"
fi

exit 0
