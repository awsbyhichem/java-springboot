#!/bin/bash
# Script de nettoyage : suppression des fichiers modifiés il y a plus de 2 ans
# et suppression des répertoires vides

# Répertoire de base
BASE_DIR="/expldata/attachements"

# Nombre de jours correspondant à 2 ans (approximativement)
DAYS=730

echo "=== Suppression des fichiers modifiés il y a plus de $DAYS jours dans $BASE_DIR ==="
# Recherche et suppression des fichiers modifiés il y a plus de 730 jours
find "$BASE_DIR" -type f -mtime +$DAYS -print -exec rm -f {} \;

echo "=== Suppression des répertoires vides ==="
# Suppression des répertoires vides en partant des plus profonds
find "$BASE_DIR" -depth -type d -empty -delete

echo "Nettoyage terminé."
