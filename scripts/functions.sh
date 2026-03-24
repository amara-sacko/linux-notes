#!/bin/bash
# Script de démonstration des fonctions Bash
# Regroupe les vérifications système en fonctions réutilisables

# Arrête le script immédiatement si une commande échoue
set -e

# Fonction qui vérifie l'utilisation de l'espace disque
# Alerte si l'utilisation dépasse 80%
check_disk() {
    # Récupère le % d'utilisation de la partition principale (sans le %)
    DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
    if [ $DISK_USAGE -gt 80 ]; then
        echo "Espace disque critique: $DISK_USAGE%"
    else
        echo "Espace disque correct: $DISK_USAGE%"
    fi
}

# Fonction qui affiche la RAM disponible en Mo
check_ram(){
    # free -m = affiche en Mo, NR==2 = 2ème ligne, $4 = colonne "free"
    RAM_FREE=$(free -m | awk 'NR==2 {print $4}')
    echo "Espace mémoire RAM disponible: $RAM_FREE Mo"
}

# Fonction qui vérifie si un service est actif
# $1 = premier argument passé à la fonction (nom du service)
check_service() {
    SERVICE=$1
    # is-active retourne 0 si actif, autre si inactif
    # > /dev/null 2>&1 = masque toute la sortie
    if systemctl is-active $SERVICE > /dev/null 2>&1; then
        echo "Service $SERVICE : actif"
    else
        echo "Service $SERVICE : inactif"
    fi
}

# Appel des fonctions
check_disk
check_ram
check_service nginx
check_service apache2
