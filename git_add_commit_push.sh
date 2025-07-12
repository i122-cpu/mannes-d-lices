#!/bin/bash

# Message de commit en argument ou message par défaut
COMMIT_MSG=${1:-"Mise à jour des fichiers CSS et autres modifications"}

echo "Ajout des fichiers modifiés..."
git add .

echo "Commit avec le message : $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

echo "Push vers la branche main..."
git push origin main

echo "Terminé !"
