#!/bin/bash

# Définir les catégories et leurs images associées
declare -A recettes=(
  ["sauces-africaines.jpg"]="Sauces africaines"
  ["salades.jpg"]="Les salades"
  ["plats-resistants.jpg"]="Saveurs des plats résistants"
  ["desserts-gourmands.jpg"]="Desserts gourmands"
)

declare -A cours=(
  ["cours-patisserie.jpg"]="Cours de pâtisserie"
  ["cours-cuisine-africaine.jpg"]="Cours de cuisine africaine"
  ["cuisine-internationale.jpg"]="Cuisine internationale"
  ["techniques-culinaires.jpg"]="Techniques culinaires"
)

# Fonction pour vérifier que l'image existe
function check_image {
  local img_path="./images/$1"
  if [[ ! -f "$img_path" ]]; then
    echo "⚠️  Image manquante : $img_path"
    return 1
  fi
  return 0
}

# Générer la section Recettes populaires
echo '<section class="cards-section">'
echo '  <h3>Recettes populaires</h3>'
echo '  <div class="cards-container">'
for img in "${!recettes[@]}"; do
  check_image "$img" || continue
  label="${recettes[$img]}"
  echo '    <div class="card">'
  echo "      <img src=\"images/$img\" alt=\"$label\">"
  echo "      <p>$label</p>"
  echo '    </div>'
done
echo '  </div>'
echo '</section>'
echo

# Générer la section Nos cours
echo '<section class="cards-section">'
echo '  <h3>Nos cours</h3>'
echo '  <div class="cards-container">'
for img in "${!cours[@]}"; do
  check_image "$img" || continue
  label="${cours[$img]}"
  echo '    <div class="card">'
  echo "      <img src=\"images/$img\" alt=\"$label\">"
  echo "      <p>$label</p>"
  echo '    </div>'
done
echo '  </div>'
echo '</section>'
