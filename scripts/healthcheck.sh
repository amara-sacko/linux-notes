#!/bin/bash
# Script d'analyse de logs nginx
# Affiche les 5 IPs les plus actives, le nombre de requêtes et les erreurs 404

# Fichier de logs à analyser
LOG_FILE="faux-access.log"

echo "================================"
echo "   RAPPORT ANALYSE LOGS NGINX   "
echo "================================"
echo ""
echo "Fichier analysé : $LOG_FILE"
echo "Date : $(date)"
echo ""
echo "=== Top 5 IPs les plus actives ==="
# La commande awk permet d'affiche les éléments de la première colonne
# La commande sort regroupe les IP identiques ensemble,
# Les options -rn permettent de trier par nombre décroissant
# n = numeric, r = reverse
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -rn | head -5
echo ""
echo "=== Nombre total de requêtes ==="
# wc = word count, l'option -l permet de compter le nombre de lignes
wc -l < $LOG_FILE
echo ""
echo "=== Erreurs 404 ==="
# La commande grep filtre les lignes qui contiennent 404
grep "404" $LOG_FILE | wc -l

