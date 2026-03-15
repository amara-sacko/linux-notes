#!/bin/bash
# Script de monitoring système
# Affiche l'utilisation du CPU, la RAM disponible et l'espace disque

echo "================================"
echo "   RAPPORT MONITORING SYSTEME   "
echo "================================"
echo ""
echo "Date : $(date)"
echo ""
echo "=== RAM ==="
# free affiche la mémoire, -h = human readable (Mo/Go)
free -h
echo ""
echo "=== Espace disque ==="
# df affiche l'espace disque
df -h
echo ""
echo "=== Charge CPU ==="
# vmstat affiche les stats CPU, 1 = toutes les secondes, 3 = 3 fois
vmstat 1 3
