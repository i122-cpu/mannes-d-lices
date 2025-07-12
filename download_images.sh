#!/bin/bash

mkdir -p images

echo "Téléchargement des images culinaires..."

# Sauces africaines
curl -L -o images/sauces-africaines.jpg https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=800&q=80

# Salades
curl -L -o images/salades.jpg https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=800&q=80

# Saveurs des plats résistants
curl -L -o images/plats-resistants.jpg https://images.unsplash.com/photo-1516684669134-de6a7e0bbee4?auto=format&fit=crop&w=800&q=80

# Dessert gourmand
curl -L -o images/desserts-gourmands.jpg https://images.unsplash.com/photo-1497032628192-86f99bcd76bc?auto=format&fit=crop&w=800&q=80

echo "Téléchargement terminé."
